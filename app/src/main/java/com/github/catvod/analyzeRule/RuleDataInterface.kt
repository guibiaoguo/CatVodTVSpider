package com.github.catvod.analyzeRule

interface RuleDataInterface {

    val variableMap: HashMap<String, String>

    fun putVariable(key: String, value: String?)

    fun getVariable(key: String): String? {
        return variableMap[key]
    }

}