module DXRuby

  # 音を生成するためのクラスです。
  #
  # 解像度による単位時間ごとに周波数とボリュームを指定して波形を作ることができます。
  class SoundEffect
    def initialize(time, wavetype=WAVE_RECT, resolution=1000, &b );end
    def dispose;end
    def disposed?;end
    def play(loop_flag=false);end
    def stop;end
    def add(wavetype=WAVE_RECT, resolution=1000, &b );end
    def save(filename);end
  end
end
