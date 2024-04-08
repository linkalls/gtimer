# lib/gtimer/timer.rb

module Gtimer
  class Timer
     # ブロック内の処理の実行時間を計測して返すメソッド
     def self.measure
       start_time = Time.now
       yield if block_given?
       end_time = Time.now
       elapsed_time = end_time - start_time
       elapsed_time
     end
  end
 end
