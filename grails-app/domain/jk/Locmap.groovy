package jk


/** マップ */
class Locmap {
	
	/** x座標 */
	int x
	/** y座標 */
	int y
	/** オブジェクト */
	String object
	/** オブジェクトID */
	int objectId
	
    static constraints = {
	x(range:0..4)
	y(range:0..4)
	object(blank:false)
	objectId(min:0)
    }
}
