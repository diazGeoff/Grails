package com.gTunes.domain

class Store {
    String name

    static hasMany = [albums: Album]
    static constraints = {
        name blank: false
    }
}
