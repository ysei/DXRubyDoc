module DXRuby

  # 音を扱うクラスです。
  # MIDI、WAVのファイルを読み込み、再生することができます。
  class Sound
    def initialize(filename);end
    def dispose;end
    def disposed?;end
    def play;end
    def stop;end
    def set_volume(volume, time=0);end
    def start=(pos);end
    def loop_start=(pos);end
    def loop_end=(pos);end
    def loop_count=(count);end
  end
end
