package jk

/** 動物 */
class Animal {

    static hasMany = [account:Account,battle:Battle]
    
    /** 種類 */
    String name
    /** 画像ファイル */
    String img
    /** 遭遇時画像ファイル */
    String encountimg
    
    
    static constraints = {
    }
    String toString(){
        return name
    }

}