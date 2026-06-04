require "ruby_pymill"
require "fileutils"
require "time"

BASE_DIR = File.expand_path("..", __dir__)

NOTEBOOK     = File.join(BASE_DIR, "notebook", "旅館宿泊数予測PoC.ipynb")
OUT_NOTEBOOK = File.join(BASE_DIR, "outputs", "out_preprocess.ipynb")
PARAMS       = File.join(BASE_DIR, "params",    "inn-forecast.json")

LOG_DIR = File.join(BASE_DIR, "logs")
FileUtils.mkdir_p(LOG_DIR)
FileUtils.mkdir_p(File.join(BASE_DIR, "outputs"))

LOG_FILE = File.join(LOG_DIR, "run_#{Time.now.strftime('%Y%m%d_%H%M%S')}.log")

puts "ログ: #{LOG_FILE}"
puts "RubyPyMill 実行開始..."

output = RubyPyMill::API.run(
  notebook: NOTEBOOK,
  output: OUT_NOTEBOOK,
  kernel: "inn-forecast",
  cell_tags: "parameters,Step1_1,Step1_2,Step2,Step3,Step4,Step5,appendix",
  params: PARAMS,
  log: LOG_FILE
)

puts output
puts "\n=== 完了しました ==="