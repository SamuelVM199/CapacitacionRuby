mi_proc = Proc.new {puts "Hola desde un Proc!"}

mi_proc.call # Llama al Proc

mi_lambda = -> {puts "Hola desde un Lambda!"}
mi_lambda.call # Llama al Lambda

meme1 = Proc.new do puts "Que mas de Bloques, Procesos y Lambada!" end
meme2 = -> { puts "Ya estoda wee!" }

meme1.call
meme2.call