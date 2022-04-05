;说明
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;LAlt

;;按住alt第二行是数字1-9-0
;; 数字0-9
LAlt & a::
  Send {1}
  KeyWait a
  return

LAlt & s::
  Send {2}
  KeyWait s
  return

LAlt & d::
  Send {3}
  KeyWait d
  return

LAlt & f::
  Send {4}
  KeyWait f
  return

LAlt & g::
  Send {5}
  KeyWait g
  return

LAlt & h::
  Send {6}
  KeyWait h
  return

LAlt & j::
  Send {7}
  KeyWait j
  return

LAlt & k::
  Send {8}
  KeyWait k
  return

LAlt & l::
  Send {9}
  KeyWait l
  return
; `是转义字符`后面的还是原来的意思
LAlt & `;::
  Send {0}
  KeyWait `;
  return

; 第一行是符号
LAlt & q::
  Send {!}
  KeyWait q
  return

LAlt & w::
  Send {@}
  KeyWait w
  return

LAlt & e::
  Send {#}
  KeyWait e
  return

LAlt & r::
  Send {$}
  KeyWait r
  return

LAlt & t::
  Send {`%}
  KeyWait t
  return

LAlt & y::
  Send {^}
  KeyWait y
  return

LAlt & u::
  Send {&}
  KeyWait u
  return

LAlt & i::
  Send {*}
  KeyWait i
  return

LAlt & o::
  Send {(}
  KeyWait o
  return

LAlt & p::
  Send {-}
  KeyWait p
  return

LAlt & m::
  Send {+}
  KeyWait m
  return