package eeye.dashboard.utils;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Date;

public class DateUtils {
	public static Date pegarDataMenosXDias(int dias) {
		ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.systemDefault()).minusDays(dias).withHour(0).withMinute(0)
				.withSecond(0);
		return Date.from(date.toInstant());
	}
}
