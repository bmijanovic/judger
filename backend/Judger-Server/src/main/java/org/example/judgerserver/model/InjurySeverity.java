package org.example.judgerserver.model;

public enum InjurySeverity {
    NONE,                // No injuries
    MINOR,               // Scratches, bruises
    MODERATE,            // Broken bones, but not life-threatening
    SERIOUS,             // Severe bodily harm, permanent damage possible
    LIFE_THREATENING,    // Critical condition, requires immediate care
    FATAL                // Death occurred
}