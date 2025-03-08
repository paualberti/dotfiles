/* Copyright 2023 ChuseCubr */
/* https://github.com/ChuseCubr/mini-ryoku */

/* This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 2 of the License, or (at your option) any later version. This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have received a copy of the GNU General Public License along with this program. If not, see <http://www.gnu.org/licenses/>. */

#pragma once

/* Modifiers */
// #define OSL_MAJ OSL(_MAJ)
// #define OSM_CTL OSM(MOD_RCTL)
//
// #define OSM_SFT OSM(MOD_LSFT)
// #define OSM_ALT OSM(MOD_LALT)

#define MO_MAJ MO(_MAJ)

/* Home-row */
// yrst
#define MT_T MT(MOD_LGUI, ES_T)
#define MT_S MT(MOD_LALT, ES_S)
#define LT_R LT(_NAV, ES_R)

#define MT_N MT(MOD_RGUI, KC_N)
#define MT_A MT(MOD_LALT, KC_A)
#define LT_E LT(_NAV, KC_E)

// qwerty
#define MT_f MT(MOD_LGUI, ES_F)
#define MT_d MT(MOD_LALT, ES_D)
#define LT_s LT(_NAV, ES_S)

#define MT_j MT(MOD_RGUI, ES_J)
#define MT_k MT(MOD_LALT, ES_K)
#define LT_l LT(_NAV, ES_L)

// arrows
#define CT_LEFT C(KC_LEFT)
#define CT_RGHT C(KC_RGHT)

/* Layer switching */
#define TO_HOME TO(_HOME)
#define TO_QWTY TO(_QWTY)

#define LT_SPC LT(_NUM, KC_SPC)
#define LT_ESC LT(_SIM, KC_ESC)

#define TO_NUM TO(_NUM)
#define TO_SIM TO(_SIM)
#define TO_NAV TO(_NAV)
#define TO_GLOB TO(_GLOB)

/* Extras */
#define ES_EUR ALGR(ES_E)
#define S_TAB S(KC_TAB)
