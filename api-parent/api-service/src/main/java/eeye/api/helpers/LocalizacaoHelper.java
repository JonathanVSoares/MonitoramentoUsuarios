package eeye.api.helpers;

import java.io.IOException;

import org.springframework.stereotype.Component;

import com.google.maps.GeoApiContext;
import com.google.maps.GeocodingApi;
import com.google.maps.errors.ApiException;
import com.google.maps.model.AddressComponent;
import com.google.maps.model.AddressComponentType;
import com.google.maps.model.GeocodingResult;
import com.google.maps.model.LatLng;

import eeye.model.Navegacao;

@Component
public class LocalizacaoHelper {
	public void registrarLocalizacao(Navegacao navegacao) throws ApiException, InterruptedException, IOException {
		double lat = navegacao.getPosicaoGeo().getX();
		double lng = navegacao.getPosicaoGeo().getY();
		
		GeoApiContext context = new GeoApiContext.Builder().apiKey("AIzaSyC6zoi6yLhfIE6qekts2QBTMkNICyQ2l1A").build();
		GeocodingResult[] results = GeocodingApi.reverseGeocode(context, new LatLng(lat, lng))
				.await();
		
		for (AddressComponent addressComponent : results[0].addressComponents) {
			for (AddressComponentType type : addressComponent.types) {
				switch (type) {
				case ADMINISTRATIVE_AREA_LEVEL_1:
					navegacao.setEstado(addressComponent.longName);
					navegacao.setEstadoAbrev(addressComponent.shortName);
					break;
				case ADMINISTRATIVE_AREA_LEVEL_2:
					navegacao.setCidade(addressComponent.longName);
					break;
				case COUNTRY:
					navegacao.setPais(addressComponent.longName);
					break;
				default:
					break;
				}
			}
		}
	}
}
