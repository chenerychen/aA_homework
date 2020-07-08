class Map 

    attr_reader :pair

    def initialize 
        @pair = []
    end 


    def set(key, value)
        pair_idx = @pair.index {|p| p[0] == key}

        if pair_idx 
            pair[pair_idx][1] = value
        else  
            pair << [key,value]
        end 
        value 
    end 


    def get(key) 
        @pair.each do |p|
            if [0].include?(key) 
                return p[1] if p[0] == key 
            end 
        end       
        nil       
    end 


    def delete(key) 
        value = self.get(key)
        pair.reject! {|p| p[0] == key}
        value 
    end 


    def show 
       deep_dup(pair)
    end 


    def deep_dup(arr)
        arr.map {|row| row.is_a?(Array) ? deep_dup(row) : row}
    end 
end 