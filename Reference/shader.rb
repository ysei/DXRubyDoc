module DXRuby

  # プログラマブルシェーダを扱うクラスです。
  # このオブジェクトをWindow.draw_shaderなどに渡すことで、描画時にエフェクトを適用することができます。
  #
  # Shader::Coreクラスでプログラムのコードをコンパイル・保持し、描画パラメータとShader::CoreオブジェクトをShaderオブジェクトに保持します。
  # これにより複数の画像を同じHLSLコード、違うパラメータで描画する場合に、ひとつのShader::Coreオブジェクトと複数のShaderオブジェクトを生成して効率よく扱うことができます。
  class Shader

    # <b>Shaderオブジェクトを生成する</b>
    #
    # coreで渡されたShader::Coreオブジェクトを持つShaderオブジェクトを生成します。Shader::Coreオブジェクト生成時にparamで指定されたパラメータの名前でGetter/Setterを定義します。
    def initialize(core, technique_name = nil);end

    # プログラマブルシェーダのプログラムそのものを表すクラスです。
    # HLSLのコードを渡して生成し、コンパイルされたコードを保持します。
    class Core
      # <b>Shader::Coreオブジェクトを生成する</b>
      #
      # @param [String] hlsl HLSLコードのテキスト
      # @param [Hash] param HLSLコードに渡すパラメータ。Shaderオブジェクトの特異メソッドとして定義される。
      # @return [Core]
      def self.new(hlsl, param = {});end

      # <b>selfを破棄する</B>
      #
      # Shader::Coreオブジェクトを破棄します。Rubyオブジェクトは参照できますが、disposed?以外のメソッドを呼ぶと例外が発生します。GCに回収される前にリソースを解放したい場合に呼び出します。
      # @return [nil] self
      def dispose;end

      # <b>破棄されたオブジェクトの場合trueを返す</b>
      #
      # Shader::Coreが破棄されているかどうかを返します。破棄されたオブジェクトでもこのメソッドだけは呼ぶことができます。
      # @return [Boolean] 破棄されてたらtrue
      def disposed?;end

      # <b>パラメータのHashを返す</b>
      #
      # @return [Hash] new時に設定されたparam
      def param;end

    end
  end
end
