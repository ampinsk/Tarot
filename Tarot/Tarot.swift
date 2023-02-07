//
//  Tarot.swift
//  Tarot
//
//  Created by Amanda Pinsker on 2/5/23.
//

import Foundation


struct Tarot: Identifiable {
    let id = UUID()
    let name: String
    let number: String
    let the: String
    let regular: String
    let reverse: String
    let background: String
    let foreground: String
    let category: String
}

class TarotInfo {
  var tarotData = [
    Tarot(
      name: "Fool",
      number: "0",
      the: "The",
      regular: "New beginnings, innocence, adventure",
      reverse: "Recklessness, fearlessness, risk",
      background: "Light Gray",
      foreground: "Cyan",
      category: "Major Arcana" ),
    Tarot(
      name: "Magician",
      number: "1",
      the: "The",
      regular: "Willpower, creation, manifestation",
      reverse: "The same stuff but sort of worse",
      background: "Purple",
      foreground: "Fuscia",
      category: "Major Arcana" ),
    Tarot(
      name: "High Priestess",
      number: "2",
      the: "The",
      regular: "Intuitive, unconscious, divine feminine",
      reverse: "Repressed feelings, withdrawal, silence",
      background: "Hot Pink",
      foreground: "Yellow",
      category: "Major Arcana" ),
    Tarot(
      name: "Empress",
      number: "3",
      the: "The",
      regular: "Nurturing, fertility, abundance",
      reverse: "Dependence, smothering, emptiness",
      background: "Burgundy",
      foreground: "Plum",
      category: "Major Arcana" ),
    Tarot(
      name: "Emperor",
      number: "4",
      the: "The",
      regular: "Authority, structure, a father figure",
      reverse: "Control, rigidity, domination",
      background: "Navy",
      foreground: "Gold",
      category: "Major Arcana" ),
    Tarot(
      name: "Hierophant",
      number: "5",
      the: "The",
      regular: "Spiritual wisdom, tradition, conformity, morality, ethics",
      reverse: "Rebellion, subversiveness, freedom, personal beliefs",
      background: "Navy",
      foreground: "Gold",
      category: "Major Arcana" ),
    Tarot(
      name: "Lovers",
      number: "6",
      the: "The",
      regular: "Love, harmony, partnerships, choices",
      reverse: "Disbalance, one-sidedness, disharmony",
      background: "Navy",
      foreground: "Gold",
      category: "Major Arcana" ),
    Tarot(
      name: "Cups",
      number: "A",
      the: "",
      regular: "Happiness, fulfillment, new beginnings",
      reverse: "Anguish, end of a relationship, bad news",
      background: "Navy",
      foreground: "Gold",
      category: "Cups" ),
    Tarot(
      name: "Wands",
      number: "A",
      the: "",
      regular: "Happiness, fulfillment, new beginnings",
      reverse: "Anguish, end of a relationship, bad news",
      background: "Navy",
      foreground: "Gold",
      category: "Wands" ),
    Tarot(
      name: "Swords",
      number: "A",
      the: "",
      regular: "Happiness, fulfillment, new beginnings",
      reverse: "Anguish, end of a relationship, bad news",
      background: "Navy",
      foreground: "Gold",
      category: "Swords" ),
    Tarot(
      name: "Pentacles",
      number: "A",
      the: "",
      regular: "Happiness, fulfillment, new beginnings",
      reverse: "Anguish, end of a relationship, bad news",
      background: "Navy",
      foreground: "Gold",
      category: "Pentacles" ),
    
  ]
  
}
