module DXRuby

  # フォントの情報を保持するクラスです。
  # Window.draw_fontなどのメソッドに引数で渡すことで文字の形を指定することができます。
  #
  # なお、生成したオブジェクトの情報を変更することはできません。
  # 違う形のフォントが欲しい場合は新しいFontオブジェクトを生成してください。
  class Font
  
    # <b>フォントを現在のプロセスにのみ一時的にインストールする</b>
    #
    # システムにインストールされていないフォントファイルを動的にインストールします。
    # このメソッドでインストールしたフォントは現在のプロセスのみ有効で、別プロセスで使用することはできません。プロセスが終了したら自動的に解放されます。
    # @param [String] filename インストールするフォントのファイル名
    # @return [nil]
    # @example "font/FAMania2.6.TTF"をインストールして使う
    #   Font.install("font/FAMania2.6.TTF")
    #   font = Font.new("FAMania", 16)
    def self.install(filename);end
  
    # <b>デフォルトフォントオブジェクトを返す</b>
    #
    # デフォルトフォントは起動時にFont.new(24)で作成されたフォントが設定されます。Font.default=で変更することができます。
    # @return [Font] デフォルトのフォントオブジェクト
    def self.default;end
  
    # <b>デフォルトフォントオブジェクトを設定する</b>
    #
    # デフォルトフォントを変更します。
    # @param [Font] font デフォルトフォントに指定するFontオブジェクト
    # @return [Font] 引数で渡したフォント
    def self.default=(font);end
  
    # <b>Fontオブジェクトを生成する</b>
    #
    # 等幅フォントの場合、描画される文字のサイズは全角文字で幅・高さともにピクセル数=fontsize（半角文字は幅がfontsizeの半分）となります。
    # プロポーショナルフォントの場合は文字ごとに幅が異なりますので、描画される横幅は不明となりますが、Font#get_widthメソッドで事前に取得することができます。
    # @param [Numeric] fontsize フォントのサイズを指定します。
    # @param [String] fontname 使用するフォント名を指定します。指定した名前が存在しない場合、"ＭＳ Ｐゴシック"が使用されます。
    # @param [Hash] options オプションをハッシュで渡します。
    # @option options [Boolean] :symbol_weight 太字の場合にtrueを渡します。数字を設定すると0～1000までの100刻みで太さを指定できます。trueは1000、falseは400と同じです。
    # @option options [Boolean] :symbol_italic 斜体の場合にtrueを渡します。Font#get_widthが返す値は右にはみ出したぶんが考慮されませんので注意してください。
    # @return [Font] 生成したFontオブジェクトを返します。
    def initialize(fontsize, fontname = "", options = {});end
  
    # <b>selfを破棄する</B>
    #
    # フォントを破棄します。Rubyオブジェクトは参照できますが、disposed?以外のメソッドを呼ぶと例外が発生します。GCに回収される前にリソースを解放したい場合に呼び出します。
    # @return [nil] self
    def dispose;end
  
    # <b>破棄されたオブジェクトの場合trueを返す</b>
    #
    # フォントが破棄されているかどうかを返します。破棄されたオブジェクトでもこのメソッドだけは呼ぶことができます。
    # @return [Boolean] 破棄されてたらtrue
    def disposed?;end
  
    # <b>selfを使って引数の文字列を描画した場合に必要になる幅を返す</b>
    #
    # 描画するのに何pixel必要かをピクセル数で返します。斜体の文字の場合、右にはみ出す分は考慮されません。縦幅はFont#sizeで取得できるピクセル数です。
    #
    # エッジ付きで描画する場合はedge_widthのぶんだけ左右に、影付きの場合は影の距離ぶんだけその方向に必要pixel数は増えます。
    # @return [Integer] 描画に必要な横pixel数
    def get_width(str);end
  
    # <b>フォント名を返す</b>
    #
    # selfを生成したときに指定したフォント名を返します。
    # @return [String] フォント名
    def fontname;end
  
    # <b>イタリック体かどうかを返す</b>
    #
    # selfが斜体かどうかを返します。
    # @return [Boolean] 斜体の場合にtrue
    def italic;end
  
    # <b>文字の太さを返す</b>
    #
    # selfの文字の太さを返します。newの時に渡した値がtrue/falseだった場合、それぞれ1000/400が返ります。
    # @return [Integer] 太さ(0～1000)
    def weight;end
  
    # <b>文字サイズを返す</b>
    #
    # newの時に渡した値が返ります。
    # @return [Integer] 文字サイズ
    def size;end
  
    # <b>フォントの各種情報を返す</b>
    #
    # 引数で渡された文字列の最初の一文字をselfのフォントで描画した際の各種情報を返します。
    # @param [String] str 情報を取得する文字を指定します。
    # @return [FontInfo] 描画される文字の各種情報をFontInfo構造体で返します。
    # @see FontInfo
    def info(str);end
  
    # @attr_reader [Integer] gm_blackbox_x 文字の線が存在する領域の幅
    # @attr_reader [Integer] gm_blackbox_y 文字の線が存在する領域の高さ
    # @attr_reader [Integer] gm_cellinc_x 文字の起点位置から次の文字への移動量。左右の空白を含む
    # @attr_reader [Integer] gmpt_glyphorigin_x 文字の起点位置から文字の線が存在する領域までの空白の幅
    # @attr_reader [Integer] gmpt_glyphorigin_y ベースラインから文字の上端までの高さ
    # @attr_reader [Integer] tm_ascent ベースラインから空白を含む上端までの高さ
    # @attr_reader [Integer] tm_descent ベースラインから空白を含む下端までの高さ
    FontInfo = Struct.new(:gm_blackbox_x, :gm_blackbox_y, :gm_cellinc_x, :gmpt_glyphorigin_x, :gmpt_glyphorigin_y, :tm_ascent, :tm_descent)
  end
end  
  
