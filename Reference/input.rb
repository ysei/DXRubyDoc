module DXRuby

  # キーボード、マウス、ゲームパッドの入力を取得するためのモジュールです。
  # パッドのボタンをキーボードのキーに割り当てたり、オートリピートを設定したりできます。
  #
  # キーとパッドの割り当ては、初期状態ではカーソルキーとパッドの十字ボタン、Zとパッドのボタン0、Xとボタン１、Cとボタン2となっています。
  module Input
    # <b>左右の入力を-1, 0, 1で取得する</b>
    #
    # キーボードのカーソルキー、パッド0の左右ボタンの入力を-1, 0, 1で返します。
    # 引数を指定するとパッドの番号を変えることができます。
    #
    # 内部的にはパッドの入力のみ判定していますが、パッドの十字ボタンとカーソルキーが割り当てられているのでカーソルキーでも入力可能となっています。この割り当てはInput.set_configで解除することができます。
    # @param [Integer] pad_number パッド番号を指定します。
    # @return [Integer] 左が入力された場合-1、右は1、入力無しは0。
    # @example 左右の入力でx座標を1ずつ変更する
    #   x += Input.x
    def self.x(pad_number = 0);end
    def self.y(pad_number = 0);end
    def self.set_mouse_pos(x, y);end
    def self.mouse_pos_x;end
    def self.mouse_pos_y;end
    def self.key_down?(key_code);end
    def self.key_push?(key_code);end
    def self.key_release?(key_code);end
    def self.pad_down?(pad_button_code, pad_number = 0);end
    def self.pad_push?(pad_button_code, pad_number = 0);end
    def self.pad_release?(pad_button_code, pad_number = 0);end
    def self.mouse_down?(mouse_button_code);end
    def self.mouse_push?(mouse_button_code);end
    def self.mouse_release?(mouse_button_code);end
    def self.mouse_enable(flag);end
    def self.mouse_wheel_pos;end
    def self.mouse_wheel_pos=(pos);end
    def self.set_config(pad_button_code, key_code, pad_number = 0);end
    def self.set_repeat(wait, interval);end
    def self.update;end
    def self.set_key_repeat(key_code, wait, interval);end
    def self.set_pad_repeat(pad_button_code, wait, interval, padnumber = 0);end
    def self.keys;end
    def self.pads(pad_number = 0);end
    def self.pad_num;end
    def self.pad_axis(pad_number = 0);end
    def self.pad_lstick(pad_number = 0);end
    def self.pad_rstick(pad_number = 0);end
    def self.pad_pov(pad_number = 0);end
    def self.pad_lx(pad_number = 0);end
    def self.pad_ly(pad_number = 0);end
    def self.pad_rx(pad_number = 0);end
    def self.pad_ry(pad_number = 0);end
    def self.pad_pov_x(pad_number = 0);end
    def self.pad_pov_y(pad_number = 0);end
    def self.set_cursor(cursor_shape);end
  end
end
