
zookeeper:
  heapSize: 1024m

kafka:
  heapSize: 1024m

liveTranscode:
  replicas: defn(`NLIVES')
  streams:
    - name: "bbb_sunflower_1080p_30fps_normal.mp4"
      transcode:
        - protocol: dash
          scale: "856:480"
          bitrate: "8000000"
          framerate: 25
          gop: 100
          maxbframes: 2
          refsNum: 2
          preset: veryfast
          encoderType: libx264
        - protocol: hls
          scale: "856:480"
          bitrate: "8000000"
          framerate: 25
          gop: 100
          maxbframes: 2
          refsNum: 2
          preset: veryfast
          encoderType: libsvt_hevc

vodTranscode:
  replicas: defn(`NVODS')

cdn:
  hostIP: defn(`HOSTIP')

volume:
  html: 
    size: defn(`HTML_VOLUME_SIZE')
  video:
    archive:
      size: defn(`ARCHIVE_VOLUME_SIZE')
    dash:
      size: defn(`DASH_VOLUME_SIZE')
    hls:
      size: defn(`HLS_VOLUME_SIZE')