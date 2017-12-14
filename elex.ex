defmodule M do
    def main do
        #name = IO.gets("What is your name ? ") |> String.trim
        #IO.puts "Hello #{name}"
        data_stuff()
        do_other_stuff()
        K.do_saker()
        K.do_extra_saker()
    end

    def data_stuff do
        my_int = 123
        my_float = 3.12312
        IO.puts  "Float #{is_float my_float}"
        IO.puts  "Atom #{is_atom :Pittsburgh}"
        one_to_10 = 1..10
    end

    def do_other_stuff do
        my_str = "My sentence"
        IO.puts "Lenght : #{String.length(my_str)}"
        IO.puts "Test Lenght : #{my_str |> String.length}"
        concated_str = my_str <> "aaa" <> "logl"
        IO.puts concated_str
        IO.puts "Är de lika ? : #{"Egg" == :Egg}"
        IO.puts "Contain Egg ? #{String.contains?(my_str, "My")}"
        IO.puts "Contain Egg ? #{String.first(my_str)}"
        IO.inspect String.split(my_str, " ")
        IO.puts String.split(my_str, " ")
        rem(5,4) |> IO.puts
        2 * 123 |> IO.puts
        IO.puts "sdasa #{5 <= 4}"
    end
end

defmodule K do
    def do_saker do
        age = 4
        if  age > 10 do
            IO.puts "can"
        else
            IO.puts "cant"
        end

        unless age <= 4 do
            IO.puts "unless true"
        else
            IO.puts "YOu are big"
        end

        # something like switch case or more like if else if else
        cond do
            age >= 2 -> IO.puts "YOU  SUCK"
            age < 5 -> IO.puts "YOU SUCK 2"
            true -> IO.puts "YOu dont suck"
        end

        case age do
            1 -> IO.puts "u are  one years old"
            2 -> IO.puts "u are two years old"
            4 -> IO.puts "u are four years old"
        end
        # ternary like age === 4 ? 'qwe' : 'qwewqe'
        namne = if age < 4, do: "abcde", else: "hahahah"
        namne |> IO.puts
    end

    def do_extra_saker do
        my_stats = {123, 1213, :BASEL}
        IO.puts "Tuple #{is_tuple(my_stats)}"
        IO.inspect my_stats
        forcedNewTuple = Tuple.append(my_stats, 123)
        IO.puts "third #{elem(forcedNewTuple, 3)}"
        IO.puts "TUple size #{tuple_size(forcedNewTuple)}"

        newData = Tuple.delete_at(forcedNewTuple, 1)
        my_stats4 = Tuple.insert_at(my_stats, 2, 12223)
        my_stats5 = Tuple.insert_at(my_stats, 2, Tuple.duplicate(0,4))

        list = [1,12,545]
        cb =  fn item -> IO.puts " bull #{item}" end
        Enum.each(list, cb)
        Enum.each(list,
            fn
                item -> IO.puts " bull #{item}"
            end)
        IO.puts factorial(16)
    end


    def factorial(num) do
        if num <= 1 do
            1
        else
            result = num * factorial(num - 1)
            result
        end
    end

end
