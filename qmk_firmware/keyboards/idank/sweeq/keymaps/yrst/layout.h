/* Copyright 2023 ChuseCubr */
/* https://github.com/ChuseCubr/mini-ryoku */

/* This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 2 of the License, or (at your option) any later version. This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have received a copy of the GNU General Public License along with this program. If not, see <http://www.gnu.org/licenses/>. */

#include "keycodes.h"

#pragma once

/* Layout */

// clang-format off
#define _HOME_LAYOUT \
/*   ,-------------------------------------------------.    ,-------------------------------------------------.   */\
/*   | P       | L       | W       | M       | Q       |    | Z       | F       | O       | U       | '       |   */\
       ES_P    , ES_L    , ES_W    , ES_M    , ES_Q    ,      ES_Z    , ES_F    , ES_O    , ES_U    , ES_QUOT ,     \
/*   |-------------------------------------------------|    |-------------------------------------------------|   */\
/*   | Y       | R       | S       | T       | K       |    | J       | N       | A       | E       | I       |   */\
       ES_Y    , LT_R    , MT_S    , MT_T    , ES_K    ,      ES_J    , MT_N    , MT_A    , LT_E    , ES_I    ,     \
/*   |-------------------------------------------------|    |-------------------------------------------------|   */\
/*   | Z       | X       | C       | D       | V       |    | K       | H       | ,       | ;       | .       |   */\
       ES_G    , ES_X    , ES_C    , ES_D    , ES_V    ,      ES_B    , ES_H    , ES_COMM , ES_SCLN , ES_DOT  ,     \
/*   `-------------------------------------------------|    |-------------------------------------------------'   */\
/*                                 |         |         |    |         |         |                                 */\
                                     LT_SPC  , MO_MAJ  ,      KC_RCTL , LT_ESC
/*                                 `-------------------'    `-------------------'                                 */


#define _MAJ_LAYOUT \
/*   ,-------------------------------------------------.    ,-------------------------------------------------.   */\
/*   | P       | L       | W       | M       | Q       |    | Z       | F       | O       | U       | "       |   */\
       S(ES_P) , S(ES_L) , S(ES_W) , S(ES_M) , S(ES_Q) ,      S(ES_Z) , S(ES_F) , S(ES_O) , S(ES_U) , ES_DQUO ,     \
/*   |-------------------------------------------------|    |-------------------------------------------------|   */\
/*   | Y       | R       | S       | T       | K       |    | J       | N       | A       | E       | I       |   */\
       S(ES_Y) , S(ES_R) , S(ES_S) , S(ES_T) , S(ES_K) ,      S(ES_J) , S(ES_N) , S(ES_A) , S(ES_E) , S(ES_I) ,     \
/*   |-------------------------------------------------|    |-------------------------------------------------|   */\
/*   | Z       | X       | C       | D       | V       |    | K       | H       | <       | :       | >       |   */\
       S(ES_G) , S(ES_X) , S(ES_C) , S(ES_D) , S(ES_V) ,      S(ES_B) , S(ES_H) , ES_LABK , ES_COLN , ES_RABK ,     \
/*   `-------------------------------------------------|    |-------------------------------------------------'   */\
/*                                 |         |         |    |         |         |                                 */\
                                     LT_SPC  , KC_NO   ,      KC_RCTL , LT_ESC
/*                                 `-------------------'    `-------------------'                                 */


#define _QWTY_LAYOUT \
/*   ,-------------------------------------------------.    ,-------------------------------------------------.   */\
/*   | Q       | W       | E       | R       | T       |    | Y       | U       | I       | O       | P       |   */\
       ES_Q    , ES_W    , ES_E    , ES_R    , ES_T    ,      ES_Y    , ES_U    , ES_I    , ES_O    , ES_P    ,     \
/*   |-------------------------------------------------|    |-------------------------------------------------|   */\
/*   | A       | S       | D       | F       | G       |    | H       | J       | K       | L       | Ñ       |   */\
       ES_A    , LT_s    , MT_d    , MT_f    , ES_G    ,      ES_H    , MT_j    , MT_k    , LT_l    , ES_NTIL ,     \
/*   |-------------------------------------------------|    |-------------------------------------------------|   */\
/*   | Q       | X       | C       | V       | B       |    | N       | M       | , ;     | . :     | - _     |   */\
       ES_Q    , ES_X    , ES_C    , ES_V    , ES_B    ,      ES_N    , ES_M    , ES_COMM , ES_DOT  , ES_MINS ,     \
/*   `-------------------------------------------------|    |-------------------------------------------------'   */\
/*                                 |         |         |    |         |         |                                 */\
                                     LT_SPC  , KC_LSFT ,      KC_RCTL , LT_ESC
/*                                 `-------------------'    `-------------------'                                 */


#define _NUM_LAYOUT \
/*   ,-------------------------------------------------.    ,-------------------------------------------------.   */\
/*   |         |         | Ç       | Ñ       |         |    | INS     | 7       | 8       | 9       |         |   */\
       KC_NO   , KC_NO   , ES_GRV  , ES_NTIL , KC_NO   ,      KC_INS  , KC_7    , KC_8    , KC_9    , KC_NO   ,     \
/*   |-------------------------------------------------|    |-------------------------------------------------|   */\
/*   |         | ¨       | `       | ´       |         |    |         | 4       | 5       | 6       | 0       |   */\
       KC_NO   , ES_DIAE , ES_GRV  , ES_ACUT , KC_NO   ,      KC_NO   , KC_4    , KC_5    , KC_6    , KC_0    ,     \
/*   |-------------------------------------------------|    |-------------------------------------------------|   */\
/*   |         | ·       | ¿       | ¡       |         |    |         | 1       | 2       | 3       |         |   */\
       KC_NO   , ES_BULT , ES_IQUE , ES_IEXL , KC_SPC  ,      KC_NO   , KC_1    , KC_2    , KC_3    , KC_DOT  ,     \
/*   `-------------------------------------------------|    |-------------------------------------------------'   */\
/*                                 |         |         |    |         |         |                                 */\
                                     TO_HOME , KC_LCTL ,      KC_LALT , LT_ESC
/*                                 `-------------------'    `-------------------'                                 */


#define _SIM_LAYOUT \
/*   ,-------------------------------------------------.    ,-------------------------------------------------.   */\
/*   | DEL     | @       | #       | $       | %       |    | ^       | &       | *       | €       | BSPC    |   */\
       KC_DEL  , ES_AT   , ES_HASH , ES_DLR  , ES_PERC ,      ES_CIRC , ES_AMPR , ES_ASTR , ES_EUR  , KC_BSPC ,     \
/*   |-------------------------------------------------|    |-------------------------------------------------|   */\
/*   | TAB     | =       | _       | -       | +       |    | \       | (       | )       | |       | ENT     |   */\
       KC_TAB  , ES_EQL  , ES_UNDS , ES_MINS , ES_PLUS ,      ES_BSLS , ES_LPRN , ES_RPRN , ES_PIPE , KC_ENT  ,     \
/*   |-------------------------------------------------|    |-------------------------------------------------|   */\
/*   | S_TAB   | /       | ?       | !       | ~       |    | [       | {       | }       | ]       |         |   */\
       S_TAB   , ES_SLSH , ES_QUES , ES_EXLM , ES_TILD ,      ES_LBRC , ES_LCBR , ES_RCBR , ES_RBRC , TO_NAV  ,     \
/*   `-------------------------------------------------|    |-------------------------------------------------'   */\
/*                                 |         |         |    |         |         |                                 */\
                                     KC_SPC  , KC_LCTL ,      KC_LALT , TO_NUM
/*                                 `-------------------'    `-------------------'                                 */


#define _NAV_LAYOUT \
/*   ,-------------------------------------------------.    ,-------------------------------------------------.   */\
/*   | PSTE    | RGHT    | CT_RGHT | END     |         |    |         | FIND    |         | PGUP    |         |   */\
       KC_PSTE , KC_RGHT , CT_RGHT , KC_END  , KC_NO   ,      KC_NO   , KC_FIND , KC_NO   , KC_PGUP , KC_NO   ,     \
/*   |-------------------------------------------------|    |-------------------------------------------------|   */\
/*   | COPY    |         | HOME    |         | UP      |    | DOWN    |         |         |         |         |   */\
       KC_COPY , KC_NO   , KC_HOME , KC_NO   , KC_UP   ,      KC_DOWN , KC_NO   , KC_NO   , KC_NO   , KC_NO   ,     \
/*   |-------------------------------------------------|    |-------------------------------------------------|   */\
/*   |         |         |         | PGDN    |         |    | CT_LEFT | LEFT    |         |         |         |   */\
       KC_NO   , KC_NO   , KC_NO   , KC_PGDN , KC_NO   ,      CT_LEFT , KC_LEFT , KC_NO   , KC_NO   , TO_GLOB ,     \
/*   `-------------------------------------------------|    |-------------------------------------------------'   */\
/*                                 |         |         |    |         |         |                                 */\
                                     TO_HOME , KC_LCTL ,      KC_LALT , TO_NUM
/*                                 `-------------------'    `-------------------'                                 */

#define _GLOB_LAYOUT \
/*   ,-------------------------------------------------.    ,-------------------------------------------------.   */\
/*   | PSCR    | WBAK    | UP      | WFWD    | BOOT    |    |         | F7      | F8      | F9      | F10     |   */\
       KC_PSCR , KC_WBAK , KC_UP   , KC_WFWD , QK_BOOT ,      KC_NO   , KC_F7   , KC_F8   , KC_F9   , KC_F10  ,     \
/*   |-------------------------------------------------|    |-------------------------------------------------|   */\
/*   | VOLU    | LEFT    | DOWN    | RGHT    | WHLU    |    |         | F4      | F5      | F6      | F11     |   */\
       KC_VOLU , KC_LEFT , KC_DOWN , KC_RGHT , MS_WHLU ,      KC_NO   , KC_F4   , KC_F5   , KC_F6   , KC_F11  ,     \
/*   |-------------------------------------------------|    |-------------------------------------------------|   */\
/*   | VOLD    | WHLL    | WHLD    | WHLR    |         |    |         | F1      | F2      | F3      | F12     |   */\
       KC_VOLD , MS_WHLL , MS_WHLD , MS_WHLR , TO_QWTY ,      KC_NO   , KC_F1   , KC_F2   , KC_F3   , KC_F12  ,     \
/*   `-------------------------------------------------|    |-------------------------------------------------'   */\
/*                                 |         |         |    |         |         |                                 */\
                                     TO_HOME , KC_LCTL ,      KC_LALT , TO_NUM
/*                                 `-------------------'    `-------------------'                                 */

