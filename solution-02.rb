def parser(input)
  eval(input)[:time]
end

input = "{\"time\":\"2022-06-17T05:52:39.787Z\"}"
parser(input) => "2022-06-17 07:54:13 +0200"
