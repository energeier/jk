package jk
import jk.Animal
import jk.Authority

/**
 * User domain class.
 */
class Account {
    static transients = ['pass']
    static hasMany = [authorities: Authority]
    static belongsTo = [Authority]

/**アカウント名*/
    String name
/**メールアドレス*/
    String email
/**パスワード*/
    String passwd
/**えさ*/
    int esa
/**ヒットポイント*/
    int hp
/**勝利数*/
    int won
/** sk */
    int lost
/**死亡フラグ*/
    boolean deadflg
/**戦績*/
    String log 
    
    Animal animal //

    /** plain password to create a MD5 password */
    String pass = '[secret]'

    static constraints = {
        name(blank:false,maxSize:40,unique:true)
        email(email:true)
        passwd(blank:false,maxSize:40)
        esa(max:3,min:0)
        hp(max:100,min:0)
        won(min:0)
        lost(min:0)
        log()
    }
}