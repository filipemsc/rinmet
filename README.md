# rinmet
Este pacote consiste em um código de webscrapping que captura informações de todas as estações meteorológicas do Brasil administradas pelo Instituto Nacional de Meteorologia (INMET) e compila estes dados em uma base de dados unificada. Cada observação da base corresponde a informações coletadas por uma estação, em determinada data e hora do dia.

Segue uma breve descrição das variáveis disponívels: 

| ***Variável***| ***Descrição*** |
|-----|-----|
| `data` | Date |
| `hora` | Hour (UTC) |
| `precipitacao_total` | Total precipitation, hour (mm) |
|`pressao_atm_nivel`|Atmospheric pressure at station level, hour (mB)|
|`pressao_atm_max`| Maximum atmospheric pressure at station level, last hour (mB)|
|`pressao_atm_max`| Minimum atmospheric pressure at station level, last hour (mB)|
|`radiacao_global`| Global radiation (KJ/m²)|
|`temp_bulbo_hora`| Dry-bulb temperature, hour (ºC)|
|`temp_orvalho`| Dew point (ºC)|
|`temp_max`| Maximum temperature, last hour (ºC)|
|`temp_min`| Minimum temperature, last hour (ºC)|
|`temp_orv_max`| Maximum dew point, last hour (ºC)|
|`temp_orv_min`| Minimum dew point, last hour (ºC)|
|`umid_rel_max`| Maximum air relative humidity, last hour (%)|
|`umid_rel_min`| Minimum air relative humidity, last hour (%)|
|`umid_rel_hora`| Air relative humidity, hour (%)|
|`vento_direcao`| Wind direction (gr)|
|`vento_rajada_max`| Maximum wind gust, last hour (m/s)|
|`vento_velocidade`| Wind speed, hour (m/s) |



## Instalação
Para instalar, utilize o seguinte comando: 
```
devtools::install_github("filipemsc/rinmet")
```

## Uso
O pacote `rinmet` possui apenas uma função, com a seguinte sintaxe:
```
get_base_inmet(year)
``` 
Exemplo: 
``` 
get_base_inmet(2020)
```
O resultado é um `data.table` com as informações de todas informações meteorológicas deste ano.

## Disclaimer
Este pacote foi feito com fins de aprendizado acerca de funcionamento de pacotes. Se quiser contribuir e aprimorá-lo, basta abrir uma issue ou mandar um e-mail para: f.matheus.cavalcanti@gmail.com
