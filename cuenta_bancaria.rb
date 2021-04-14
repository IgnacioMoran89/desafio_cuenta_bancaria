class CuentaBancaria
    attr_accessor  :nombre_de_usuario, :numero_cuenta, :vip

    def initialize (nombre_de_usuario, numero_cuenta, vip = 0)

       if numero_cuenta.digits.count == 8 
            @nombre_de_usuario = nombre_de_usuario
            @numero_cuenta = numero_cuenta
            @vip = vip
       else 
            raise RangeError.new('No es un rango válido')
       end 
    end 

    def numero_de_cuenta
        if vip == 1
            "1 - #{numero_cuenta}"
        elsif vip == 0
            "0 - #{numero_cuenta}"
        else
            'Ingrese tipo de cliente valido'
        end 
    end 
    
end 


#cuenta1 = CuentaBancaria.new('Valeria', 14334578, 0) 
#cuenta2 = CuentaBancaria.new('Ignacio', 16334578, 1)

