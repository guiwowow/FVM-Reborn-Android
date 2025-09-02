function Enum_Init(){
	enum CARD_STATE{
		IDLE,
		ATTACK,
		GROW,
		JUMPING,
		
	}
	enum CARD_DATA {
	    obj,        // 卡牌对象
	    spr,        // 卡牌精灵
	    cost,       // 使用消耗
	    cooldown,   // 冷却时间（帧数）
	    description // 卡牌描述
	}
	enum ATTACK_TYPE{
		PRODUCER,
		SHOOTER
	}
	enum ENEMY_STATE{
		IDLE,
		ATTACK,
		NORMAL,
		HURT,
		HURTATTACK,
		DEAD
	}
}