package jk

/** ���� */
class Animal {

    static hasMany = [account:Account,battle:Battle]
    
    /** ��� */
    String name
    /** �摜�t�@�C�� */
    String img
    /** �������摜�t�@�C�� */
    String encountimg
    
    
    static constraints = {
    }
    String toString(){
        return name
    }

}