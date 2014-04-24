package com.gTunes.domain

class Album {
    String title
    Store store

    static hasMany = [songs: Song]
    static constraints = {
    }
}
