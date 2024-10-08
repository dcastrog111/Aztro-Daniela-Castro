package org.example.domain.agenciaViajes;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Viaje {

    private String id;
    private String cityName;
    private String countryName;
}
