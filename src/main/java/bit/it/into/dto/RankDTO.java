package bit.it.into.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class RankDTO {
	private int member_num;
	private int investment_amount;
	private int net_profit;
	private double net_profit_ratio;
	private int enabled;
}
