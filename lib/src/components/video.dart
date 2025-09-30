import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class Video extends StatefulWidget {
  const Video({required this.uri, required super.key});

  final Uri uri;

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  VideoPlayerController? _videoPlayerController;
  ChewieController? _chewieController;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    try {
      debugPrint('🎬 Initializing video player with URI: ${widget.uri}');
      _videoPlayerController = VideoPlayerController.networkUrl(widget.uri);

      // Add error listener before initialization
      _videoPlayerController!.addListener(_onVideoPlayerError);

      await _videoPlayerController!.initialize();
      debugPrint('✅ Video player initialized successfully');

      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController!,
        autoPlay: false,
        looping: false,
        showControls: true,
        materialProgressColors: ChewieProgressColors(
          playedColor: Colors.blue,
          handleColor: Colors.blue,
          backgroundColor: Colors.grey,
          bufferedColor: Colors.grey.shade300,
        ),
        placeholder: Container(
          color: Colors.black,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        autoInitialize: true,
        errorBuilder: (context, errorMessage) {
          debugPrint('🚨 Chewie Error: $errorMessage');

          // Provide more helpful error messages
          String displayMessage = errorMessage;
          if (kIsWeb && widget.uri.toString().contains('.m3u8')) {
            displayMessage =
                'M3U8 streams are not fully supported on web browsers. '
                'Consider using MP4 format for better compatibility.';
          }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 48,
                ),
                const SizedBox(height: 16),
                Text(
                  displayMessage,
                  style: const TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                if (kIsWeb && widget.uri.toString().contains('.m3u8')) ...[
                  const SizedBox(height: 12),
                  Text(
                    'Try viewing on mobile app for full HLS support',
                    style: TextStyle(color: Colors.grey[400], fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ],
              ],
            ),
          );
        },
      );

      // Listen for progress updates
      _videoPlayerController!.addListener(_onVideoPlayerUpdate);

      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    } catch (error, stackTrace) {
      debugPrint('🚨 Video initialization error: $error');
      debugPrint('📚 Stack trace: $stackTrace');

      if (mounted) {
        setState(() {
          _isLoading = false;
          _errorMessage = 'Failed to load video: $error';
        });
      }
    }
  }

  void _onVideoPlayerError() {
    if (_videoPlayerController != null &&
        _videoPlayerController!.value.hasError) {
      final error = _videoPlayerController!.value.errorDescription;
      debugPrint('🚨 VideoPlayerController Error: $error');

      if (mounted) {
        setState(() {
          _errorMessage = 'Video playback error: $error';
          _isLoading = false;
        });
      }
    }
  }

  void _onVideoPlayerUpdate() {
    if (_videoPlayerController != null &&
        _videoPlayerController!.value.isInitialized) {
      final position = _videoPlayerController!.value.position;
      final duration = _videoPlayerController!.value.duration;

      // Log progress every 15 seconds (similar to original implementation)
      if (position.inSeconds % 15 == 0 && position.inSeconds > 0) {
        debugPrint('⏰ Current position: ${position.inSeconds} seconds');
      }

      // Check if video is completed (95% threshold like original)
      if (duration.inSeconds > 0) {
        final completionPercentage = position.inSeconds / duration.inSeconds;
        if (completionPercentage >= 0.95) {
          debugPrint('🎉 Video completed');
        }
      }
    }
  }

  @override
  void dispose() {
    _videoPlayerController?.removeListener(_onVideoPlayerUpdate);
    _videoPlayerController?.removeListener(_onVideoPlayerError);
    _videoPlayerController?.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color: Colors.black,
        child: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : _errorMessage != null
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error_outline,
                          color: Colors.red,
                          size: 48,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          _errorMessage!,
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _isLoading = true;
                              _errorMessage = null;
                            });
                            _initializePlayer();
                          },
                          child: const Text('Retry'),
                        ),
                        if (kIsWeb &&
                            widget.uri.toString().contains('.m3u8')) ...[
                          const SizedBox(height: 8),
                          Text(
                            'Web browsers have limited HLS support',
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 11),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ],
                    ),
                  )
                : _chewieController != null
                    ? Chewie(
                        controller: _chewieController!,
                      )
                    : const Center(
                        child: Text(
                          'Video player not available',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
      ),
    );
  }
}
