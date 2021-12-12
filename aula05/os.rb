require 'os'

def my_os
 if OS.windows?
   "WINDOWS"
 elsif  OS.linux?
   "LINUX"
 elsif OS.mac?
   "MAC.OS"
 else
    "'Não Identificado'"
 end
end

puts "Meu sistema operacional é o #{my_os}, com #{OS.bits}bits e #{OS.cpu_count} núcleos de cpu."