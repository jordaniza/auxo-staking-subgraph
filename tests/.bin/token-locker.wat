(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32 i32) (result i32)))
  (type (;5;) (func))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32 i32)))
  (import "env" "abort" (func $~lib/builtins/abort (type 9)))
  (import "conversion" "typeConversion.stringToH160" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160 (type 0)))
  (import "numbers" "bigInt.fromString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString (type 0)))
  (import "numbers" "bigInt.times" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.times (type 2)))
  (import "log" "log.log" (func $~lib/matchstick-as/log/log.log (type 1)))
  (import "index" "mockFunction" (func $~lib/matchstick-as/index/mockFunction (type 10)))
  (import "index" "_registerHook" (func $~lib/matchstick-as/assembly/index/_registerHook (type 1)))
  (import "store" "clearStore" (func $~lib/matchstick-as/assembly/store/clearStore (type 5)))
  (import "numbers" "bigInt.pow" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow (type 2)))
  (import "conversion" "typeConversion.bytesToHex" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex (type 0)))
  (import "conversion" "typeConversion.bigIntToString" (func $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString (type 0)))
  (import "index" "store.get" (func $~lib/@graphprotocol/graph-ts/index/store.get (type 2)))
  (import "ethereum" "ethereum.call" (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call (type 0)))
  (import "numbers" "bigDecimal.toString" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString (type 0)))
  (import "index" "store.set" (func $~lib/@graphprotocol/graph-ts/index/store.set (type 6)))
  (import "numbers" "bigInt.dividedByDecimal" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal (type 2)))
  (import "numbers" "bigInt.dividedBy" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedBy (type 2)))
  (import "store" "countEntities" (func $~lib/matchstick-as/assembly/store/countEntities (type 0)))
  (import "assert" "_assert.equals" (func $~lib/matchstick-as/assembly/assert/_assert.equals (type 2)))
  (import "assert" "_assert.fieldEquals" (func $~lib/matchstick-as/assembly/assert/_assert.fieldEquals (type 8)))
  (import "numbers" "bigInt.plus" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.plus (type 2)))
  (import "numbers" "bigInt.minus" (func $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.minus (type 2)))
  (import "index" "_registerTest" (func $~lib/matchstick-as/assembly/index/_registerTest (type 6)))
  (import "index" "_registerDescribe" (func $~lib/matchstick-as/assembly/index/_registerDescribe (type 1)))
  (func $~lib/rt/stub/__alloc (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 1073741820
    i32.gt_u
    if  ;; label = @1
      i32.const 1056
      i32.const 1120
      i32.const 33
      i32.const 29
      call $~lib/builtins/abort
      unreachable
    end
    global.get $~lib/rt/stub/offset
    local.tee 3
    i32.const 4
    i32.add
    local.tee 4
    local.get 0
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    i32.const 4
    i32.sub
    local.tee 5
    i32.add
    local.tee 0
    memory.size
    local.tee 2
    i32.const 16
    i32.shl
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    local.tee 1
    i32.gt_u
    if  ;; label = @1
      local.get 2
      local.get 0
      local.get 1
      i32.sub
      i32.const 65535
      i32.add
      i32.const -65536
      i32.and
      i32.const 16
      i32.shr_u
      local.tee 1
      local.get 1
      local.get 2
      i32.lt_s
      select
      memory.grow
      i32.const 0
      i32.lt_s
      if  ;; label = @2
        local.get 1
        memory.grow
        i32.const 0
        i32.lt_s
        if  ;; label = @3
          unreachable
        end
      end
    end
    local.get 0
    global.set $~lib/rt/stub/offset
    local.get 3
    local.get 5
    i32.store
    local.get 4)
  (func $~lib/rt/stub/__new (type 2) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 1073741804
    i32.gt_u
    if  ;; label = @1
      i32.const 1056
      i32.const 1120
      i32.const 86
      i32.const 30
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    call $~lib/rt/stub/__alloc
    local.tee 3
    i32.const 4
    i32.sub
    local.tee 2
    i32.const 0
    i32.store offset=4
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 3
    i32.const 16
    i32.add)
  (func $~lib/memory/memory.fill (type 1) (param i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8
      local.get 0
      local.get 1
      i32.add
      local.tee 2
      i32.const 1
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 2
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=1
      local.get 0
      i32.const 0
      i32.store8 offset=2
      local.get 2
      i32.const 2
      i32.sub
      i32.const 0
      i32.store8
      local.get 2
      i32.const 3
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 6
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=3
      local.get 2
      i32.const 4
      i32.sub
      i32.const 0
      i32.store8
      local.get 1
      i32.const 8
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 2
      i32.add
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      local.get 1
      local.get 2
      i32.sub
      i32.const -4
      i32.and
      local.tee 2
      i32.add
      local.tee 1
      i32.const 4
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 8
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=4
      local.get 0
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.const 12
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 8
      i32.sub
      i32.const 0
      i32.store
      local.get 2
      i32.const 24
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store offset=12
      local.get 0
      i32.const 0
      i32.store offset=16
      local.get 0
      i32.const 0
      i32.store offset=20
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 1
      i32.const 28
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 24
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 20
      i32.sub
      i32.const 0
      i32.store
      local.get 1
      i32.const 16
      i32.sub
      i32.const 0
      i32.store
      local.get 0
      local.get 0
      i32.const 4
      i32.and
      i32.const 24
      i32.add
      local.tee 1
      i32.add
      local.set 0
      local.get 2
      local.get 1
      i32.sub
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 32
        i32.ge_u
        if  ;; label = @3
          local.get 0
          i64.const 0
          i64.store
          local.get 0
          i64.const 0
          i64.store offset=8
          local.get 0
          i64.const 0
          i64.store offset=16
          local.get 0
          i64.const 0
          i64.store offset=24
          local.get 1
          i32.const 32
          i32.sub
          local.set 1
          local.get 0
          i32.const 32
          i32.add
          local.set 0
          br 1 (;@2;)
        end
      end
    end)
  (func $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor (type 0) (param i32) (result i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 0
        i32.eqz
        if  ;; label = @3
          i32.const 4
          i32.const 5
          call $~lib/rt/stub/__new
          local.set 0
        end
        local.get 0
      end
      i32.eqz
      if  ;; label = @2
        i32.const 4
        i32.const 7
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    i32.const 0
    i32.store
    i32.const 16
    i32.const 9
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    i32.const 32
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 32
    call $~lib/memory/memory.fill
    local.get 1
    local.get 2
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 32
    i32.store offset=8
    local.get 1
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor (type 2) (param i32 i32) (result i32)
    (local i32)
    block (result i32)  ;; label = @1
      block (result i32)  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          i32.eqz
          if  ;; label = @4
            i32.const 12
            i32.const 12
            call $~lib/rt/stub/__new
            local.set 0
          end
          local.get 0
        end
        i32.eqz
        if  ;; label = @3
          i32.const 12
          i32.const 13
          call $~lib/rt/stub/__new
          local.set 0
        end
        local.get 0
      end
      i32.eqz
      if  ;; label = @2
        i32.const 12
        i32.const 2
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 1
    i32.const 1073741820
    i32.gt_u
    if  ;; label = @1
      i32.const 1728
      i32.const 1936
      i32.const 18
      i32.const 57
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 1
    call $~lib/memory/memory.fill
    local.get 0
    local.get 2
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0)
  (func $~lib/typedarray/Uint8Array#__set (type 6) (param i32 i32 i32)
    local.get 1
    local.get 0
    i32.load offset=8
    i32.ge_u
    if  ;; label = @1
      i32.const 2000
      i32.const 2064
      i32.const 175
      i32.const 45
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 0
    i32.load offset=4
    i32.add
    local.get 2
    i32.store8)
  (func $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32 (type 0) (param i32) (result i32)
    (local i32)
    i32.const 0
    i32.const 4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.tee 1
    i32.const 0
    local.get 0
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 1
    local.get 0
    i32.const 8
    i32.shr_s
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 2
    local.get 0
    i32.const 16
    i32.shr_s
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get 1
    i32.const 3
    local.get 0
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Uint8Array#__set
    local.get 1)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor (type 0) (param i32) (result i32)
    (local i32)
    i32.const 8
    i32.const 15
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=4
    local.get 1)
  (func $~lib/util/memory/memcpy (type 6) (param i32 i32 i32)
    (local i32 i32 i32)
    loop  ;; label = @1
      local.get 1
      i32.const 3
      i32.and
      i32.const 0
      local.get 2
      select
      if  ;; label = @2
        local.get 0
        local.tee 3
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.tee 4
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 3
    i32.and
    i32.eqz
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 0
          local.get 1
          i32.load offset=8
          i32.store offset=8
          local.get 0
          local.get 1
          i32.load offset=12
          i32.store offset=12
          local.get 1
          i32.const 16
          i32.add
          local.set 1
          local.get 0
          i32.const 16
          i32.add
          local.set 0
          local.get 2
          i32.const 16
          i32.sub
          local.set 2
          br 1 (;@2;)
        end
      end
      local.get 2
      i32.const 8
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 0
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 1
          i32.const 8
          i32.add
          local.set 1
          local.get 0
          i32.const 8
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 4
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 0
          i32.const 4
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 2
      i32.and
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 0
          local.get 1
          i32.load16_u
          i32.store16
          local.get 1
          i32.const 2
          i32.add
          local.set 1
          local.get 0
          i32.const 2
          i32.add
        end
        local.set 0
      end
      local.get 2
      i32.const 1
      i32.and
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.load8_u
        i32.store8
      end
      return
    end
    local.get 2
    i32.const 32
    i32.ge_u
    if  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.and
              i32.const 1
              i32.sub
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;)
            end
            local.get 1
            i32.load
            local.set 5
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.load8_u
            i32.store8
            local.get 0
            local.tee 4
            i32.const 2
            i32.add
            local.set 0
            local.get 1
            local.tee 3
            i32.const 2
            i32.add
            local.set 1
            local.get 4
            local.get 3
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 2
            i32.const 3
            i32.sub
            local.set 2
            loop  ;; label = @5
              local.get 2
              i32.const 17
              i32.ge_u
              if  ;; label = @6
                local.get 0
                local.get 1
                i32.load offset=1
                local.tee 3
                i32.const 8
                i32.shl
                local.get 5
                i32.const 24
                i32.shr_u
                i32.or
                i32.store
                local.get 0
                local.get 3
                i32.const 24
                i32.shr_u
                local.get 1
                i32.load offset=5
                local.tee 3
                i32.const 8
                i32.shl
                i32.or
                i32.store offset=4
                local.get 0
                local.get 3
                i32.const 24
                i32.shr_u
                local.get 1
                i32.load offset=9
                local.tee 3
                i32.const 8
                i32.shl
                i32.or
                i32.store offset=8
                local.get 0
                local.get 1
                i32.load offset=13
                local.tee 5
                i32.const 8
                i32.shl
                local.get 3
                i32.const 24
                i32.shr_u
                i32.or
                i32.store offset=12
                local.get 1
                i32.const 16
                i32.add
                local.set 1
                local.get 0
                i32.const 16
                i32.add
                local.set 0
                local.get 2
                i32.const 16
                i32.sub
                local.set 2
                br 1 (;@5;)
              end
            end
            br 2 (;@2;)
          end
          local.get 1
          i32.load
          local.set 5
          local.get 0
          local.get 1
          i32.load8_u
          i32.store8
          local.get 0
          local.tee 4
          i32.const 2
          i32.add
          local.set 0
          local.get 1
          local.tee 3
          i32.const 2
          i32.add
          local.set 1
          local.get 4
          local.get 3
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 2
          i32.const 2
          i32.sub
          local.set 2
          loop  ;; label = @4
            local.get 2
            i32.const 18
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i32.load offset=2
              local.tee 3
              i32.const 16
              i32.shl
              local.get 5
              i32.const 16
              i32.shr_u
              i32.or
              i32.store
              local.get 0
              local.get 3
              i32.const 16
              i32.shr_u
              local.get 1
              i32.load offset=6
              local.tee 3
              i32.const 16
              i32.shl
              i32.or
              i32.store offset=4
              local.get 0
              local.get 3
              i32.const 16
              i32.shr_u
              local.get 1
              i32.load offset=10
              local.tee 3
              i32.const 16
              i32.shl
              i32.or
              i32.store offset=8
              local.get 0
              local.get 1
              i32.load offset=14
              local.tee 5
              i32.const 16
              i32.shl
              local.get 3
              i32.const 16
              i32.shr_u
              i32.or
              i32.store offset=12
              local.get 1
              i32.const 16
              i32.add
              local.set 1
              local.get 0
              i32.const 16
              i32.add
              local.set 0
              local.get 2
              i32.const 16
              i32.sub
              local.set 2
              br 1 (;@4;)
            end
          end
          br 1 (;@2;)
        end
        local.get 1
        i32.load
        local.set 5
        local.get 0
        local.tee 3
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        local.tee 4
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        local.get 4
        i32.load8_u
        i32.store8
        local.get 2
        i32.const 1
        i32.sub
        local.set 2
        loop  ;; label = @3
          local.get 2
          i32.const 19
          i32.ge_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.load offset=3
            local.tee 3
            i32.const 24
            i32.shl
            local.get 5
            i32.const 8
            i32.shr_u
            i32.or
            i32.store
            local.get 0
            local.get 3
            i32.const 8
            i32.shr_u
            local.get 1
            i32.load offset=7
            local.tee 3
            i32.const 24
            i32.shl
            i32.or
            i32.store offset=4
            local.get 0
            local.get 3
            i32.const 8
            i32.shr_u
            local.get 1
            i32.load offset=11
            local.tee 3
            i32.const 24
            i32.shl
            i32.or
            i32.store offset=8
            local.get 0
            local.get 1
            i32.load offset=15
            local.tee 5
            i32.const 24
            i32.shl
            local.get 3
            i32.const 8
            i32.shr_u
            i32.or
            i32.store offset=12
            local.get 1
            i32.const 16
            i32.add
            local.set 1
            local.get 0
            i32.const 16
            i32.add
            local.set 0
            local.get 2
            i32.const 16
            i32.sub
            local.set 2
            br 1 (;@3;)
          end
        end
      end
    end
    local.get 2
    i32.const 16
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 4
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 1
      i32.add
      local.tee 0
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 2
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
      local.get 0
      local.tee 4
      i32.const 2
      i32.add
      local.set 0
      local.get 1
      local.tee 3
      i32.const 2
      i32.add
      local.set 1
      local.get 4
      local.get 3
      i32.load8_u offset=1
      i32.store8 offset=1
    end
    local.get 2
    i32.const 1
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.load8_u
      i32.store8
    end)
  (func $~lib/memory/memory.copy (type 6) (param i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 2
      local.set 4
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.sub
      local.get 4
      i32.sub
      i32.const 0
      local.get 4
      i32.const 1
      i32.shl
      i32.sub
      i32.le_u
      if  ;; label = @2
        local.get 0
        local.get 1
        local.get 4
        call $~lib/util/memory/memcpy
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.lt_u
      if  ;; label = @2
        local.get 1
        i32.const 7
        i32.and
        local.get 0
        i32.const 7
        i32.and
        i32.eq
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            i32.const 7
            i32.and
            if  ;; label = @5
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.sub
              local.set 4
              local.get 0
              local.tee 2
              i32.const 1
              i32.add
              local.set 0
              local.get 1
              local.tee 3
              i32.const 1
              i32.add
              local.set 1
              local.get 2
              local.get 3
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 1
              i64.load
              i64.store
              local.get 4
              i32.const 8
              i32.sub
              local.set 4
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              br 1 (;@4;)
            end
          end
        end
        loop  ;; label = @3
          local.get 4
          if  ;; label = @4
            local.get 0
            local.tee 2
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            local.tee 3
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            local.get 3
            i32.load8_u
            i32.store8
            local.get 4
            i32.const 1
            i32.sub
            local.set 4
            br 1 (;@3;)
          end
        end
      else
        local.get 1
        i32.const 7
        i32.and
        local.get 0
        i32.const 7
        i32.and
        i32.eq
        if  ;; label = @3
          loop  ;; label = @4
            local.get 0
            local.get 4
            i32.add
            i32.const 7
            i32.and
            if  ;; label = @5
              local.get 4
              i32.eqz
              br_if 4 (;@1;)
              local.get 4
              i32.const 1
              i32.sub
              local.tee 4
              local.get 0
              i32.add
              local.get 1
              local.get 4
              i32.add
              i32.load8_u
              i32.store8
              br 1 (;@4;)
            end
          end
          loop  ;; label = @4
            local.get 4
            i32.const 8
            i32.ge_u
            if  ;; label = @5
              local.get 4
              i32.const 8
              i32.sub
              local.tee 4
              local.get 0
              i32.add
              local.get 1
              local.get 4
              i32.add
              i64.load
              i64.store
              br 1 (;@4;)
            end
          end
        end
        loop  ;; label = @3
          local.get 4
          if  ;; label = @4
            local.get 4
            i32.const 1
            i32.sub
            local.tee 4
            local.get 0
            i32.add
            local.get 1
            local.get 4
            i32.add
            i32.load8_u
            i32.store8
            br 1 (;@3;)
          end
        end
      end
    end)
  (func $~lib/string/String#concat (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 3
    local.get 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.shl
    local.tee 4
    i32.add
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 2544
      return
    end
    local.get 2
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    local.get 3
    call $~lib/memory/memory.copy
    local.get 2
    local.get 3
    i32.add
    local.get 1
    local.get 4
    call $~lib/memory/memory.copy
    local.get 2)
  (func $~lib/string/String#charAt (type 2) (param i32 i32) (result i32)
    (local i32)
    local.get 1
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.ge_u
    if  ;; label = @1
      i32.const 2544
      return
    end
    i32.const 2
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    local.get 1
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get 2)
  (func $~lib/string/String.__eq (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.get 1
    i32.eq
    if  ;; label = @1
      i32.const 1
      return
    end
    local.get 1
    i32.const 0
    local.get 0
    select
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 4
    local.get 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    i32.ne
    if  ;; label = @1
      i32.const 0
      return
    end
    block (result i32)  ;; label = @1
      local.get 0
      local.set 2
      local.get 1
      local.set 3
      local.get 2
      i32.const 7
      i32.and
      local.get 3
      i32.const 7
      i32.and
      i32.or
      i32.const 1
      local.get 4
      local.tee 0
      i32.const 4
      i32.ge_u
      select
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 2
          i64.load
          local.get 3
          i64.load
          i64.eq
          if  ;; label = @4
            local.get 2
            i32.const 8
            i32.add
            local.set 2
            local.get 3
            i32.const 8
            i32.add
            local.set 3
            local.get 0
            i32.const 4
            i32.sub
            local.tee 0
            i32.const 4
            i32.ge_u
            br_if 1 (;@3;)
          end
        end
      end
      loop  ;; label = @2
        local.get 0
        local.tee 1
        i32.const 1
        i32.sub
        local.set 0
        local.get 1
        if  ;; label = @3
          local.get 2
          i32.load16_u
          local.tee 1
          local.get 3
          i32.load16_u
          local.tee 4
          i32.ne
          if  ;; label = @4
            local.get 1
            local.get 4
            i32.sub
            br 3 (;@1;)
          end
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          local.get 3
          i32.const 2
          i32.add
          local.set 3
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    i32.eqz)
  (func $~lib/string/String#substr (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.set 4
    local.get 1
    local.tee 3
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      local.get 3
      local.get 4
      i32.add
      local.tee 1
      i32.const 0
      local.get 1
      i32.const 0
      i32.gt_s
      select
      local.set 3
    end
    local.get 2
    i32.const 0
    local.get 2
    i32.const 0
    i32.gt_s
    select
    local.tee 1
    local.get 4
    local.get 3
    i32.sub
    local.tee 2
    local.get 1
    local.get 2
    i32.lt_s
    select
    i32.const 1
    i32.shl
    local.tee 1
    i32.const 0
    i32.le_s
    if  ;; label = @1
      i32.const 2544
      return
    end
    local.get 1
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    local.get 3
    i32.const 1
    i32.shl
    i32.add
    local.get 1
    call $~lib/memory/memory.copy
    local.get 2)
  (func $~lib/util/string/strtol<i32> (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    local.tee 2
    i32.load16_u
    local.set 0
    loop  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 0
        i32.const 128
        i32.or
        i32.const 160
        i32.eq
        local.get 0
        i32.const 9
        i32.sub
        i32.const 4
        i32.le_u
        i32.or
        local.get 0
        i32.const 5760
        i32.lt_u
        br_if 0 (;@2;)
        drop
        i32.const 1
        local.get 0
        i32.const -8192
        i32.add
        i32.const 10
        i32.le_u
        br_if 0 (;@2;)
        drop
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 5760
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8232
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8233
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8239
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 8287
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 12288
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            i32.const 65279
            i32.eq
            br_if 0 (;@4;)
            br 1 (;@3;)
          end
          i32.const 1
          br 1 (;@2;)
        end
        i32.const 0
      end
      if  ;; label = @2
        local.get 2
        i32.const 2
        i32.add
        local.tee 2
        i32.load16_u
        local.set 0
        local.get 1
        i32.const 1
        i32.sub
        local.set 1
        br 1 (;@1;)
      end
    end
    i32.const 1
    local.set 4
    i32.const 1
    local.get 0
    i32.const 43
    i32.eq
    local.get 0
    i32.const 45
    i32.eq
    select
    if (result i32)  ;; label = @1
      local.get 1
      i32.const 1
      i32.sub
      local.tee 1
      i32.eqz
      if  ;; label = @2
        i32.const 0
        return
      end
      i32.const -1
      i32.const 1
      local.get 0
      i32.const 45
      i32.eq
      select
      local.set 4
      local.get 2
      i32.const 2
      i32.add
      local.tee 2
      i32.load16_u
    else
      local.get 0
    end
    i32.const 48
    i32.eq
    i32.const 0
    local.get 1
    i32.const 2
    i32.gt_s
    select
    if (result i32)  ;; label = @1
      local.get 2
      i32.load16_u offset=2
      i32.const 32
      i32.or
      i32.const 120
      i32.eq
    else
      i32.const 0
    end
    if  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 2
        i32.const 4
        i32.add
        local.set 2
        local.get 1
        i32.const 2
        i32.sub
      end
      local.set 1
    end
    loop  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.tee 0
        i32.const 1
        i32.sub
        local.set 1
        local.get 0
        if  ;; label = @3
          local.get 2
          i32.load16_u
          local.tee 0
          i32.const 48
          i32.sub
          i32.const 10
          i32.lt_u
          if (result i32)  ;; label = @4
            local.get 0
            i32.const 48
            i32.sub
          else
            local.get 0
            i32.const 65
            i32.sub
            i32.const 25
            i32.le_u
            if (result i32)  ;; label = @5
              local.get 0
              i32.const 55
              i32.sub
            else
              local.get 0
              i32.const 87
              i32.sub
              local.get 0
              local.get 0
              i32.const 97
              i32.sub
              i32.const 25
              i32.le_u
              select
            end
          end
          local.tee 0
          i32.const 16
          i32.ge_u
          if  ;; label = @4
            local.get 3
            i32.eqz
            if  ;; label = @5
              i32.const 0
              return
            end
            br 2 (;@2;)
          end
          local.get 0
          local.get 3
          i32.const 4
          i32.shl
          i32.add
          local.set 3
          local.get 2
          i32.const 2
          i32.add
          local.set 2
          br 2 (;@1;)
        end
      end
    end
    local.get 3
    local.get 4
    i32.mul)
  (func $~lib/rt/__newArray (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.const 2
    i32.shl
    local.tee 4
    local.set 5
    local.get 4
    i32.const 0
    call $~lib/rt/stub/__new
    local.set 3
    local.get 2
    if  ;; label = @1
      local.get 3
      local.get 2
      local.get 5
      call $~lib/memory/memory.copy
    end
    i32.const 16
    local.get 1
    call $~lib/rt/stub/__new
    local.tee 1
    local.get 3
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 4
    i32.store offset=8
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#times (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 5008
      i32.const 5152
      i32.const 194
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.times)
  (func $start:handlers/tokenLocker.utils (type 5)
    (local i32 i32)
    i32.const 37
    i32.const 16
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 1
    i32.load offset=4
    drop
    i32.const 2832
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store
    i32.const 2864
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=4
    i32.const 2896
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=8
    i32.const 2928
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=12
    i32.const 2960
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=16
    i32.const 2992
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=20
    i32.const 3024
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=24
    i32.const 3088
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=28
    i32.const 3152
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=32
    i32.const 3216
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=36
    i32.const 3280
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=40
    i32.const 3344
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=44
    i32.const 3408
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=48
    i32.const 3472
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=52
    i32.const 3536
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=56
    i32.const 3600
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=60
    i32.const 3664
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    i32.const -64
    i32.sub
    local.get 0
    i32.store
    i32.const 3728
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=68
    i32.const 3792
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=72
    i32.const 3856
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=76
    i32.const 3920
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=80
    i32.const 3984
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=84
    i32.const 4048
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=88
    i32.const 4112
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=92
    i32.const 4176
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=96
    i32.const 4240
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=100
    i32.const 4304
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=104
    i32.const 4368
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=108
    i32.const 4432
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=112
    i32.const 4496
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=116
    i32.const 4560
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=120
    i32.const 4624
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=124
    i32.const 4688
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=128
    i32.const 4752
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=132
    i32.const 4816
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=136
    i32.const 4880
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=140
    i32.const 4944
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    local.set 0
    local.get 1
    i32.load offset=4
    local.get 0
    i32.store offset=144
    local.get 1
    global.set $handlers/tokenLocker.utils/maxRatioArray
    i32.const 2628000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $handlers/tokenLocker.utils/AVG_SECONDS_MONTH
    i32.const 36
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.get $handlers/tokenLocker.utils/AVG_SECONDS_MONTH
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#times
    global.set $handlers/tokenLocker.utils/MAX_LOCK_DURATION
    i32.const 4944
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.fromString
    global.set $handlers/tokenLocker.utils/ONE_ETHER)
  (func $~lib/matchstick-as/index/createMockedFunction (type 4) (param i32 i32 i32) (result i32)
    (local i32)
    i32.const 20
    i32.const 18
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 0
    i32.store8
    local.get 3
    i32.const 0
    i32.store offset=4
    local.get 3
    i32.const 0
    i32.store offset=8
    local.get 3
    i32.const 0
    i32.store offset=12
    local.get 3
    i32.const 0
    i32.const 20
    i32.const 5728
    call $~lib/rt/__newArray
    i32.store offset=16
    local.get 3
    local.get 0
    i32.store offset=4
    local.get 3
    local.get 1
    i32.store offset=8
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3)
  (func $~lib/array/Array<~lib/string/String>#__get (type 2) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=12
    i32.ge_u
    if  ;; label = @1
      i32.const 2000
      i32.const 1776
      i32.const 106
      i32.const 42
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load offset=4
    local.get 1
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 6000
      i32.const 1776
      i32.const 110
      i32.const 40
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0)
  (func $~lib/matchstick-as/log/format (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    i32.const 2544
    local.set 4
    i32.const 2188
    i32.load
    i32.const 1
    i32.shr_u
    local.set 3
    loop  ;; label = @1
      local.get 3
      local.get 5
      i32.gt_s
      if  ;; label = @2
        local.get 5
        local.get 3
        i32.const 1
        i32.sub
        i32.lt_s
        if (result i32)  ;; label = @3
          local.get 5
          i32.const 2188
          i32.load
          i32.const 1
          i32.shr_u
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const -1
          else
            local.get 5
            i32.const 1
            i32.shl
            i32.const 2192
            i32.add
            i32.load16_u
          end
          i32.const 123
          i32.eq
        else
          i32.const 0
        end
        if (result i32)  ;; label = @3
          local.get 5
          i32.const 1
          i32.add
          local.tee 2
          i32.const 2188
          i32.load
          i32.const 1
          i32.shr_u
          i32.ge_u
          if (result i32)  ;; label = @4
            i32.const -1
          else
            local.get 2
            i32.const 1
            i32.shl
            i32.const 2192
            i32.add
            i32.load16_u
          end
          i32.const 125
          i32.eq
        else
          i32.const 0
        end
        if  ;; label = @3
          local.get 1
          local.get 0
          i32.load offset=12
          i32.ge_s
          if (result i32)  ;; label = @4
            i32.const 5824
            i32.const 2192
            call $~lib/string/String#concat
            i32.const 5920
            i32.const 48
            i32.const 9
            call $~lib/builtins/abort
            unreachable
          else
            local.get 1
            local.tee 2
            i32.const 1
            i32.add
            local.set 1
            local.get 4
            local.get 0
            local.get 2
            call $~lib/array/Array<~lib/string/String>#__get
            call $~lib/string/String#concat
            local.set 4
            local.get 5
            i32.const 1
            i32.add
          end
          local.set 5
        else
          local.get 4
          i32.const 2192
          local.get 5
          call $~lib/string/String#charAt
          call $~lib/string/String#concat
          local.set 4
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 4)
  (func $~lib/matchstick-as/index/MockedFunction#withArgs (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.load8_u
    if  ;; label = @1
      i32.const 0
      i32.const 0
      i32.const 3
      i32.const 5792
      call $~lib/rt/__newArray
      call $~lib/matchstick-as/log/format
      call $~lib/matchstick-as/log/log.log
    else
      local.get 0
      local.get 1
      i32.store offset=16
    end
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress (type 0) (param i32) (result i32)
    (local i64)
    local.get 0
    i32.load offset=8
    i32.const 20
    i32.ne
    if  ;; label = @1
      i32.const 6128
      i32.const 6224
      i32.const 290
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 0)
  (func $~lib/matchstick-as/index/MockedFunction#returns (type 1) (param i32 i32)
    local.get 0
    i32.load8_u
    if  ;; label = @1
      i32.const 0
      i32.const 0
      i32.const 3
      i32.const 6336
      call $~lib/rt/__newArray
      call $~lib/matchstick-as/log/format
      call $~lib/matchstick-as/log/log.log
    else
      local.get 0
      i32.load offset=4
      local.get 0
      i32.load offset=8
      local.get 0
      i32.load offset=12
      local.get 0
      i32.load offset=16
      local.get 1
      i32.const 0
      call $~lib/matchstick-as/index/mockFunction
      local.get 0
      i32.const 1
      i32.store8
    end)
  (func $start:tests/token-locker.test~anonymous|0~anonymous|0 (type 5)
    (local i32 i32 i32 i64)
    global.get $tests/token-locker.test/MOCK_ADDRESS
    i32.const 5616
    i32.const 5664
    call $~lib/matchstick-as/index/createMockedFunction
    i32.const 0
    i32.const 20
    i32.const 5760
    call $~lib/rt/__newArray
    call $~lib/matchstick-as/index/MockedFunction#withArgs
    local.set 1
    i32.const 1
    i32.const 20
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    global.get $tests/token-locker.test/ARV_ADDRESS
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    local.get 0
    i32.load offset=4
    local.get 2
    i32.store
    local.get 1
    local.get 0
    call $~lib/matchstick-as/index/MockedFunction#returns
    global.get $tests/token-locker.test/ARV_ADDRESS
    i32.const 6368
    i32.const 6400
    call $~lib/matchstick-as/index/createMockedFunction
    i32.const 0
    i32.const 20
    i32.const 6464
    call $~lib/rt/__newArray
    call $~lib/matchstick-as/index/MockedFunction#withArgs
    local.set 2
    i32.const 1
    i32.const 20
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    i64.const 6496
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 2
    local.get 0
    call $~lib/matchstick-as/index/MockedFunction#returns
    global.get $tests/token-locker.test/ARV_ADDRESS
    i32.const 6560
    i32.const 6592
    call $~lib/matchstick-as/index/createMockedFunction
    i32.const 0
    i32.const 20
    i32.const 6656
    call $~lib/rt/__newArray
    call $~lib/matchstick-as/index/MockedFunction#withArgs
    local.set 2
    i32.const 1
    i32.const 20
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    i64.const 6688
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 2
    local.get 0
    call $~lib/matchstick-as/index/MockedFunction#returns
    global.get $tests/token-locker.test/ARV_ADDRESS
    i32.const 6720
    i32.const 6768
    call $~lib/matchstick-as/index/createMockedFunction
    i32.const 0
    i32.const 20
    i32.const 6832
    call $~lib/rt/__newArray
    call $~lib/matchstick-as/index/MockedFunction#withArgs
    local.set 2
    i32.const 1
    i32.const 20
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 0
    i32.load offset=4
    drop
    i32.const 18
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 4
    i32.store
    local.get 1
    local.get 3
    i64.store offset=8
    local.get 0
    i32.load offset=4
    local.get 1
    i32.store
    local.get 2
    local.get 0
    call $~lib/matchstick-as/index/MockedFunction#returns)
  (func $start:tests/token-locker.test~anonymous|0~anonymous|1 (type 5)
    call $~lib/matchstick-as/assembly/store/clearStore)
  (func $tests/token-locker.test/NumContainer#constructor (type 0) (param i32) (result i32)
    (local i32)
    i32.const 8
    i32.const 22
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store
    local.get 1
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.const 18
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#times
    i32.store offset=4
    local.get 1)
  (func $~lib/matchstick-as/defaults/newMockEvent (type 7) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.set 0
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.set 7
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 3
    i32.const 60
    i32.const 25
    call $~lib/rt/stub/__new
    local.tee 2
    local.get 0
    i32.store
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 7
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 2
    local.get 0
    i32.store offset=20
    local.get 2
    local.get 0
    i32.store offset=24
    local.get 2
    local.get 3
    i32.store offset=28
    local.get 2
    local.get 3
    i32.store offset=32
    local.get 2
    local.get 3
    i32.store offset=36
    local.get 2
    local.get 3
    i32.store offset=40
    local.get 2
    local.get 3
    i32.store offset=44
    local.get 2
    local.get 3
    i32.store offset=48
    local.get 2
    local.get 3
    i32.store offset=52
    local.get 2
    local.get 3
    i32.store offset=56
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 0
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.set 1
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.set 4
    i32.const 36
    i32.const 26
    call $~lib/rt/stub/__new
    local.tee 5
    local.get 4
    i32.store
    local.get 5
    local.get 0
    i32.store offset=4
    local.get 5
    local.get 1
    i32.store offset=8
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=16
    local.get 5
    local.get 0
    i32.store offset=20
    local.get 5
    local.get 0
    i32.store offset=24
    local.get 5
    local.get 4
    i32.store offset=28
    local.get 5
    local.get 0
    i32.store offset=32
    i32.const 0
    i32.const 28
    i32.const 7232
    call $~lib/rt/__newArray
    local.set 12
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.set 8
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 1
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.set 13
    i32.const 1
    i32.const 33
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 9
    i32.load offset=4
    drop
    global.get $~lib/matchstick-as/defaults/defaultAddress
    local.set 14
    i32.const 1
    i32.const 31
    i32.const 0
    call $~lib/rt/__newArray
    local.tee 10
    i32.load offset=4
    drop
    local.get 10
    i32.load offset=4
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.tee 4
    i32.store
    global.get $~lib/matchstick-as/defaults/defaultIntBytes
    local.set 15
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 6
    i32.const 1
    i32.const 32
    call $~lib/rt/stub/__new
    local.tee 11
    i32.const 0
    i32.store8
    local.get 11
    i32.const 0
    i32.store8
    i32.const 44
    i32.const 30
    call $~lib/rt/stub/__new
    local.tee 0
    local.get 14
    i32.store
    local.get 0
    local.get 10
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store offset=8
    local.get 0
    local.get 4
    i32.store offset=12
    local.get 0
    local.get 15
    i32.store offset=16
    local.get 0
    local.get 4
    i32.store offset=20
    local.get 0
    local.get 6
    i32.store offset=24
    local.get 0
    local.get 6
    i32.store offset=28
    local.get 0
    local.get 6
    i32.store offset=32
    local.get 0
    i32.const 2128
    i32.store offset=36
    local.get 0
    local.get 11
    i32.store offset=40
    local.get 9
    i32.load offset=4
    local.get 0
    i32.store
    global.get $~lib/matchstick-as/defaults/defaultBigInt
    local.set 6
    global.get $~lib/matchstick-as/defaults/defaultAddressBytes
    local.set 4
    i32.const 44
    i32.const 29
    call $~lib/rt/stub/__new
    local.tee 0
    local.get 8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 8
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=16
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 13
    i32.store offset=24
    local.get 0
    local.get 9
    i32.store offset=28
    local.get 0
    local.get 6
    i32.store offset=32
    local.get 0
    local.get 4
    i32.store offset=36
    local.get 0
    local.get 4
    i32.store offset=40
    i32.const 32
    i32.const 24
    call $~lib/rt/stub/__new
    local.tee 1
    local.get 7
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store offset=8
    local.get 1
    i32.const 2128
    i32.store offset=12
    local.get 1
    local.get 2
    i32.store offset=16
    local.get 1
    local.get 5
    i32.store offset=20
    local.get 1
    local.get 12
    i32.store offset=24
    local.get 1
    local.get 0
    i32.store offset=28
    local.get 1)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor (type 7) (result i32)
    (local i32 i32)
    i32.const 16
    i32.const 28
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=12
    i32.const 32
    i32.const 0
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 32
    call $~lib/memory/memory.fill
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 32
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0)
  (func $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=12
    local.tee 10
    i32.const 1
    i32.add
    local.tee 11
    local.tee 4
    local.get 0
    i32.load offset=8
    local.tee 8
    i32.const 2
    i32.shr_u
    i32.gt_u
    if  ;; label = @1
      local.get 4
      i32.const 268435455
      i32.gt_u
      if  ;; label = @2
        i32.const 1728
        i32.const 1776
        i32.const 17
        i32.const 48
        call $~lib/builtins/abort
        unreachable
      end
      local.get 0
      i32.load
      local.tee 12
      local.set 5
      local.get 8
      i32.const 1
      i32.shl
      local.tee 2
      i32.const 1073741820
      local.get 2
      i32.const 1073741820
      i32.lt_u
      select
      local.tee 3
      local.get 4
      i32.const 8
      local.get 4
      i32.const 8
      i32.gt_u
      select
      i32.const 2
      i32.shl
      local.tee 2
      local.get 2
      local.get 3
      i32.lt_u
      select
      local.tee 7
      i32.const 1073741804
      i32.gt_u
      if  ;; label = @2
        i32.const 1056
        i32.const 1120
        i32.const 99
        i32.const 30
        call $~lib/builtins/abort
        unreachable
      end
      local.get 7
      i32.const 16
      i32.add
      local.set 4
      local.get 5
      i32.const 16
      i32.sub
      local.tee 3
      i32.const 15
      i32.and
      i32.const 1
      local.get 3
      select
      if  ;; label = @2
        i32.const 0
        i32.const 1120
        i32.const 45
        i32.const 3
        call $~lib/builtins/abort
        unreachable
      end
      global.get $~lib/rt/stub/offset
      local.get 3
      local.get 3
      i32.const 4
      i32.sub
      local.tee 9
      i32.load
      local.tee 5
      i32.add
      i32.eq
      local.set 2
      local.get 4
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      i32.const 4
      i32.sub
      local.set 6
      local.get 4
      local.get 5
      i32.gt_u
      if  ;; label = @2
        local.get 2
        if  ;; label = @3
          local.get 4
          i32.const 1073741820
          i32.gt_u
          if  ;; label = @4
            i32.const 1056
            i32.const 1120
            i32.const 52
            i32.const 33
            call $~lib/builtins/abort
            unreachable
          end
          local.get 3
          local.get 6
          i32.add
          local.tee 4
          memory.size
          local.tee 5
          i32.const 16
          i32.shl
          i32.const 15
          i32.add
          i32.const -16
          i32.and
          local.tee 2
          i32.gt_u
          if  ;; label = @4
            local.get 5
            local.get 4
            local.get 2
            i32.sub
            i32.const 65535
            i32.add
            i32.const -65536
            i32.and
            i32.const 16
            i32.shr_u
            local.tee 2
            local.get 2
            local.get 5
            i32.lt_s
            select
            memory.grow
            i32.const 0
            i32.lt_s
            if  ;; label = @5
              local.get 2
              memory.grow
              i32.const 0
              i32.lt_s
              if  ;; label = @6
                unreachable
              end
            end
          end
          local.get 4
          global.set $~lib/rt/stub/offset
          local.get 9
          local.get 6
          i32.store
        else
          local.get 6
          local.get 5
          i32.const 1
          i32.shl
          local.tee 2
          local.get 2
          local.get 6
          i32.lt_u
          select
          call $~lib/rt/stub/__alloc
          local.tee 2
          local.get 3
          local.get 5
          call $~lib/memory/memory.copy
          local.get 2
          local.set 3
        end
      else
        local.get 2
        if  ;; label = @3
          local.get 3
          local.get 6
          i32.add
          global.set $~lib/rt/stub/offset
          local.get 9
          local.get 6
          i32.store
        end
      end
      local.get 3
      i32.const 4
      i32.sub
      local.get 7
      i32.store offset=16
      local.get 8
      local.get 3
      i32.const 16
      i32.add
      local.tee 2
      i32.add
      local.get 7
      local.get 8
      i32.sub
      call $~lib/memory/memory.fill
      local.get 2
      local.get 12
      i32.ne
      if  ;; label = @2
        local.get 0
        local.get 2
        i32.store
        local.get 0
        local.get 2
        i32.store offset=4
      end
      local.get 0
      local.get 7
      i32.store offset=8
    end
    local.get 0
    i32.load offset=4
    local.get 10
    i32.const 2
    i32.shl
    i32.add
    local.get 1
    i32.store
    local.get 0
    local.get 11
    i32.store offset=12)
  (func $tests/token-locker.helpers/createDepositedEvent (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 3
    i32.load offset=16
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=28
    local.get 3
    i32.load offset=16
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=40
    local.get 3
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 3
    i32.load offset=24
    local.set 5
    local.get 0
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 4
    i32.store
    local.get 0
    local.get 6
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 7264
    i32.store
    local.get 4
    local.get 0
    i32.store offset=4
    local.get 5
    local.get 4
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 3
    i32.load offset=24
    local.set 4
    local.get 1
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 4
    i32.store
    local.get 0
    local.get 6
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7296
    i32.store
    local.get 1
    local.get 0
    i32.store offset=4
    local.get 4
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 3
    i32.load offset=24
    local.set 1
    local.get 2
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 2
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 7344
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 3)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set (type 6) (param i32 i32 i32)
    (local i32 i32)
    block (result i32)  ;; label = @1
      local.get 0
      local.set 3
      loop  ;; label = @2
        local.get 4
        local.get 3
        i32.load
        i32.load offset=12
        i32.lt_s
        if  ;; label = @3
          local.get 3
          i32.load
          local.get 4
          call $~lib/array/Array<~lib/string/String>#__get
          i32.load
          local.get 1
          call $~lib/string/String.__eq
          if  ;; label = @4
            local.get 3
            i32.load
            local.get 4
            call $~lib/array/Array<~lib/string/String>#__get
            br 3 (;@1;)
          end
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          br 1 (;@2;)
        end
      end
      i32.const 0
    end
    local.tee 3
    if  ;; label = @1
      local.get 3
      local.get 2
      i32.store offset=4
    else
      i32.const 8
      i32.const 8
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 0
      i32.store
      local.get 3
      i32.const 0
      i32.store offset=4
      local.get 3
      local.get 1
      i32.store
      local.get 3
      local.get 2
      i32.store offset=4
      local.get 0
      i32.load
      local.get 3
      call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    end)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor (type 4) (param i32 i32 i32) (result i32)
    block (result i32)  ;; label = @1
      local.get 0
      i32.eqz
      if  ;; label = @2
        i32.const 8
        i32.const 42
        call $~lib/rt/stub/__new
        local.set 0
      end
      local.get 0
    end
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#tryCall (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load
    local.set 4
    local.get 0
    i32.load offset=4
    local.set 5
    i32.const 20
    i32.const 47
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=12
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 4
    i32.store
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 3
    i32.store offset=16
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.call
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 45
      call $~lib/rt/stub/__new
      local.tee 0
      i32.const 0
      i32.store
      local.get 0
      i32.const 0
      i32.store
      local.get 0
      return
    end
    i32.const 4
    i32.const 45
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 0
    i32.store
    local.get 0
    i32.const 0
    i32.store
    i32.const 4
    i32.const 46
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 2
    i32.store
    local.get 0
    local.get 1
    i32.store
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.eqz
    if  ;; label = @1
      i32.const 7680
      i32.const 7776
      call $~lib/string/String#concat
      i32.const 6224
      i32.const 714
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i32.load
    i32.load)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    if  ;; label = @1
      i32.const 7936
      i32.const 6224
      i32.const 53
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $generated/schema/TokenLockerContract#set:asAccount (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 8032
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get (type 2) (param i32 i32) (result i32)
    (local i32)
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.load
      i32.load offset=12
      i32.lt_s
      if  ;; label = @2
        local.get 0
        i32.load
        local.get 2
        call $~lib/array/Array<~lib/string/String>#__get
        i32.load
        local.get 1
        call $~lib/string/String.__eq
        if  ;; label = @3
          local.get 0
          i32.load
          local.get 2
          call $~lib/array/Array<~lib/string/String>#__get
          i32.load offset=4
          return
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 1 (;@1;)
      end
    end
    i32.const 0)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toString (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    if  ;; label = @1
      i32.const 8560
      i32.const 8624
      i32.const 70
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toI32 (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 5
    i32.eq
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    i32.load
    i32.const 1
    i32.ne
    if  ;; label = @1
      i32.const 8736
      i32.const 8624
      i32.const 65
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/util/number/itoa32 (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 2768
      return
    end
    i32.const 0
    local.get 0
    i32.sub
    local.get 0
    local.get 0
    i32.const 31
    i32.shr_u
    local.tee 3
    select
    local.tee 1
    i32.const 100000
    i32.lt_u
    if (result i32)  ;; label = @1
      local.get 1
      i32.const 100
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 1
        i32.const 10
        i32.ge_u
        i32.const 1
        i32.add
      else
        local.get 1
        i32.const 10000
        i32.ge_u
        i32.const 3
        i32.add
        local.get 1
        i32.const 1000
        i32.ge_u
        i32.add
      end
    else
      local.get 1
      i32.const 10000000
      i32.lt_u
      if (result i32)  ;; label = @2
        local.get 1
        i32.const 1000000
        i32.ge_u
        i32.const 6
        i32.add
      else
        local.get 1
        i32.const 1000000000
        i32.ge_u
        i32.const 8
        i32.add
        local.get 1
        i32.const 100000000
        i32.ge_u
        i32.add
      end
    end
    local.get 3
    i32.add
    local.tee 0
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.tee 4
    local.set 2
    loop  ;; label = @1
      local.get 1
      i32.const 10000
      i32.ge_u
      if  ;; label = @2
        local.get 1
        i32.const 10000
        i32.rem_u
        local.set 5
        local.get 1
        i32.const 10000
        i32.div_u
        local.set 1
        local.get 2
        local.get 0
        i32.const 4
        i32.sub
        local.tee 0
        i32.const 1
        i32.shl
        i32.add
        local.get 5
        i32.const 100
        i32.div_u
        i32.const 2
        i32.shl
        i32.const 8972
        i32.add
        i64.load32_u
        local.get 5
        i32.const 100
        i32.rem_u
        i32.const 2
        i32.shl
        i32.const 8972
        i32.add
        i64.load32_u
        i64.const 32
        i64.shl
        i64.or
        i64.store
        br 1 (;@1;)
      end
    end
    block (result i32)  ;; label = @1
      local.get 1
      i32.const 100
      i32.ge_u
      if  ;; label = @2
        block (result i32)  ;; label = @3
          local.get 2
          local.get 0
          i32.const 2
          i32.sub
          local.tee 0
          i32.const 1
          i32.shl
          i32.add
          local.get 1
          i32.const 100
          i32.rem_u
          i32.const 2
          i32.shl
          i32.const 8972
          i32.add
          i32.load
          i32.store
          local.get 1
          i32.const 100
          i32.div_u
        end
        local.set 1
      end
      local.get 1
    end
    i32.const 10
    i32.ge_u
    if  ;; label = @1
      local.get 2
      local.get 0
      i32.const 2
      i32.sub
      i32.const 1
      i32.shl
      i32.add
      local.get 1
      i32.const 2
      i32.shl
      i32.const 8972
      i32.add
      i32.load
      i32.store
    else
      local.get 2
      local.get 0
      i32.const 1
      i32.sub
      i32.const 1
      i32.shl
      i32.add
      local.get 1
      i32.const 48
      i32.add
      i32.store16
    end
    local.get 3
    if  ;; label = @1
      local.get 4
      i32.const 45
      i32.store16
    end
    local.get 4)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayData~anonymous|0 (type 4) (param i32 i32 i32) (result i32)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData)
  (func $~lib/util/string/joinStringArray (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1
    i32.sub
    local.tee 7
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 2544
      return
    end
    local.get 7
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      if (result i32)  ;; label = @2
        local.get 0
      else
        i32.const 2544
      end
      return
    end
    loop  ;; label = @1
      local.get 1
      local.get 5
      i32.gt_s
      if  ;; label = @2
        local.get 0
        local.get 5
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.tee 6
        if  ;; label = @3
          local.get 4
          local.get 6
          i32.const 20
          i32.sub
          i32.load offset=16
          i32.const 1
          i32.shr_u
          i32.add
          local.set 4
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 4
    local.get 7
    local.get 2
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
    local.tee 4
    i32.mul
    i32.add
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/stub/__new
    local.set 1
    i32.const 0
    local.set 5
    loop  ;; label = @1
      local.get 5
      local.get 7
      i32.lt_s
      if  ;; label = @2
        local.get 0
        local.get 5
        i32.const 2
        i32.shl
        i32.add
        i32.load
        local.tee 6
        if  ;; label = @3
          block (result i32)  ;; label = @4
            local.get 1
            local.get 3
            i32.const 1
            i32.shl
            i32.add
            local.get 6
            local.get 6
            i32.const 20
            i32.sub
            i32.load offset=16
            i32.const 1
            i32.shr_u
            local.tee 6
            i32.const 1
            i32.shl
            call $~lib/memory/memory.copy
            local.get 3
            local.get 6
            i32.add
          end
          local.set 3
        end
        local.get 4
        if  ;; label = @3
          block (result i32)  ;; label = @4
            local.get 1
            local.get 3
            i32.const 1
            i32.shl
            i32.add
            local.get 2
            local.get 4
            i32.const 1
            i32.shl
            call $~lib/memory/memory.copy
            local.get 3
            local.get 4
            i32.add
          end
          local.set 3
        end
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        br 1 (;@1;)
      end
    end
    local.get 0
    local.get 7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee 0
    if  ;; label = @1
      local.get 1
      local.get 3
      i32.const 1
      i32.shl
      i32.add
      local.get 0
      local.get 0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.const 1
      i32.shl
      call $~lib/memory/memory.copy
    end
    local.get 1)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 6
    i32.ne
    if  ;; label = @1
      i32.const 10960
      i32.const 8624
      i32.const 57
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 7
    i32.ne
    if  ;; label = @1
      i32.const 11040
      i32.const 8624
      i32.const 75
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayData (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load
                      br_table 0 (;@9;) 1 (;@8;) 2 (;@7;) 3 (;@6;) 4 (;@5;) 5 (;@4;) 6 (;@3;) 7 (;@2;) 8 (;@1;)
                    end
                    local.get 0
                    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
                    return
                  end
                  local.get 0
                  call $~lib/@graphprotocol/graph-ts/common/value/Value#toI32
                  call $~lib/util/number/itoa32
                  return
                end
                local.get 0
                i32.load
                i32.const 2
                i32.ne
                if  ;; label = @7
                  i32.const 10544
                  i32.const 8624
                  i32.const 80
                  i32.const 5
                  call $~lib/builtins/abort
                  unreachable
                end
                local.get 0
                i64.load offset=8
                i32.wrap_i64
                call $~lib/@graphprotocol/graph-ts/common/numbers/bigDecimal.toString
                return
              end
              i32.const 10704
              i32.const 10736
              local.get 0
              i32.load
              i32.const 5
              i32.eq
              if (result i32)  ;; label = @6
                i32.const 0
              else
                local.get 0
                i32.load
                i32.const 3
                i32.ne
                if  ;; label = @7
                  i32.const 10624
                  i32.const 8624
                  i32.const 52
                  i32.const 5
                  call $~lib/builtins/abort
                  unreachable
                end
                local.get 0
                i64.load offset=8
                i64.const 0
                i64.ne
              end
              select
              return
            end
            local.get 0
            local.tee 1
            i32.load
            i32.const 4
            i32.ne
            if  ;; label = @5
              i32.const 10768
              i32.const 8624
              i32.const 85
              i32.const 5
              call $~lib/builtins/abort
              unreachable
            end
            i32.const 0
            local.set 0
            local.get 1
            i64.load offset=8
            i32.wrap_i64
            local.tee 1
            i32.load offset=12
            local.tee 3
            i32.const 3
            i32.const 0
            call $~lib/rt/__newArray
            local.tee 4
            i32.load offset=4
            local.set 5
            loop  ;; label = @5
              local.get 0
              local.get 3
              local.get 1
              i32.load offset=12
              local.tee 2
              local.get 2
              local.get 3
              i32.gt_s
              select
              i32.lt_s
              if  ;; label = @6
                local.get 0
                i32.const 2
                i32.shl
                local.tee 2
                local.get 1
                i32.load offset=4
                i32.add
                i32.load
                local.get 0
                local.get 1
                i32.const 10864
                i32.load
                call_indirect $0 (type 4)
                local.set 6
                local.get 2
                local.get 5
                i32.add
                local.get 6
                i32.store
                local.get 0
                i32.const 1
                i32.add
                local.set 0
                br 1 (;@5;)
              end
            end
            i32.const 10832
            local.get 4
            i32.load offset=4
            local.get 4
            i32.load offset=12
            i32.const 10896
            call $~lib/util/string/joinStringArray
            call $~lib/string/String#concat
            i32.const 10928
            call $~lib/string/String#concat
            return
          end
          i32.const 1360
          return
        end
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
        return
      end
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
      return
    end
    i32.const 11204
    local.get 0
    i32.load
    call $~lib/util/number/itoa32
    i32.store
    i32.const 11200
    i32.const 11196
    i32.load
    i32.const 2
    i32.shr_u
    i32.const 2544
    call $~lib/util/string/joinStringArray)
  (func $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 1532
    i32.load
    i32.ge_s
    if  ;; label = @1
      i32.const 11284
      local.get 0
      i32.load
      call $~lib/util/number/itoa32
      i32.store
      i32.const 11280
      i32.const 11276
      i32.load
      i32.const 2
      i32.shr_u
      i32.const 2544
      call $~lib/util/string/joinStringArray
      return
    end
    i32.const 1520
    local.get 0
    i32.load
    call $~lib/array/Array<~lib/string/String>#__get)
  (func $generated/schema/Account#save (type 3) (param i32)
    (local i32)
    local.get 0
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 11312
      i32.const 8208
      i32.const 22
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      i32.const 6
      i32.ne
      if  ;; label = @2
        i32.const 11588
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 11596
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 11584
        i32.const 11580
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2544
        call $~lib/util/string/joinStringArray
        i32.const 8208
        i32.const 24
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 11632
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $handlers/fetch/account/fetchAccount (type 0) (param i32) (result i32)
    (local i32 i32 i64)
    i32.const 4
    i32.const 51
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 1
    local.set 2
    local.get 0
    i64.extend_i32_u
    local.set 3
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 6
    i32.store
    local.get 0
    local.get 3
    i64.store offset=8
    local.get 2
    i32.const 7472
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1
    call $generated/schema/Account#save
    local.get 1)
  (func $~lib/@graphprotocol/graph-ts/common/collections/Entity#unset (type 1) (param i32 i32)
    (local i32)
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 5
    i32.store
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 1
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $handlers/fetch/tokenLocker/fetchTokenLocker (type 0) (param i32) (result i32)
    (local i32 i32 i32 i64)
    i32.const 7536
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 2
    i32.eqz
    if  ;; label = @1
      block  ;; label = @2
        i32.const 8
        i32.const 41
        call $~lib/rt/stub/__new
        i32.const 7600
        local.get 0
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
        i32.const 5616
        i32.const 5664
        i32.const 0
        i32.const 20
        i32.const 7648
        call $~lib/rt/__newArray
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#tryCall
        local.tee 2
        i32.load
        i32.eqz
        if  ;; label = @3
          i32.const 4
          i32.const 43
          call $~lib/rt/stub/__new
          local.tee 2
          i32.const 0
          i32.store
          local.get 2
          i32.const 0
          i32.store
          br 1 (;@2;)
        end
        local.get 2
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
        i32.const 0
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
        local.set 3
        i32.const 4
        i32.const 43
        call $~lib/rt/stub/__new
        local.tee 2
        i32.const 0
        i32.store
        local.get 2
        i32.const 0
        i32.store
        i32.const 4
        i32.const 44
        call $~lib/rt/stub/__new
        local.tee 1
        i32.const 0
        i32.store
        local.get 1
        local.get 3
        i32.store
        local.get 2
        local.get 1
        i32.store
      end
      local.get 2
      local.set 1
      i32.const 4
      i32.const 40
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.set 2
      local.get 0
      i64.extend_i32_u
      local.set 4
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 6
      i32.store
      local.get 3
      local.get 4
      i64.store offset=8
      local.get 2
      i32.const 7472
      local.get 3
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 1
      i32.load
      if (result i32)  ;; label = @2
        local.get 1
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
      else
        global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.ADDRESS_ZERO
      end
      i64.extend_i32_u
      local.set 4
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 6
      i32.store
      local.get 1
      local.get 4
      i64.store offset=8
      local.get 2
      i32.const 5616
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 2
      local.get 0
      call $generated/schema/TokenLockerContract#set:asAccount
      local.get 2
      i32.const 7472
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
      local.tee 1
      i32.eqz
      if  ;; label = @2
        i32.const 8080
        i32.const 8208
        i32.const 1215
        i32.const 5
        call $~lib/builtins/abort
        unreachable
      end
      local.get 1
      if  ;; label = @2
        local.get 1
        i32.load
        i32.const 6
        i32.ne
        if  ;; label = @3
          i32.const 8516
          local.get 1
          call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
          i32.store
          i32.const 8524
          local.get 1
          call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
          i32.store
          i32.const 8512
          i32.const 8508
          i32.load
          i32.const 2
          i32.shr_u
          i32.const 2544
          call $~lib/util/string/joinStringArray
          i32.const 8208
          i32.const 1217
          i32.const 7
          call $~lib/builtins/abort
          unreachable
        end
        i32.const 7536
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
        local.get 2
        call $~lib/@graphprotocol/graph-ts/index/store.set
      end
      local.get 0
      call $handlers/fetch/account/fetchAccount
      local.tee 3
      local.set 1
      local.get 0
      if  ;; label = @2
        local.get 0
        i64.extend_i32_u
        local.set 4
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 0
        i32.const 6
        i32.store
        local.get 0
        local.get 4
        i64.store offset=8
        local.get 1
        i32.const 11680
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      else
        local.get 1
        i32.const 11680
        call $~lib/@graphprotocol/graph-ts/common/collections/Entity#unset
      end
      local.get 3
      call $generated/schema/Account#save
    end
    local.get 2)
  (func $generated/schema/TokenLockerContract#get:veToken (type 0) (param i32) (result i32)
    local.get 0
    i32.const 5616
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 11728
      i32.const 8208
      i32.const 1251
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/Address.fromBytes (type 0) (param i32) (result i32)
    local.get 0
    i32.load offset=8
    i32.const 20
    i32.ne
    if  ;; label = @1
      i32.const 11972
      local.get 0
      i32.load offset=8
      call $~lib/util/number/itoa32
      i32.store
      i32.const 11968
      i32.const 11964
      i32.load
      i32.const 2
      i32.shr_u
      i32.const 2544
      call $~lib/util/string/joinStringArray
      i32.const 5152
      i32.const 42
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 6
    i32.ne
    if  ;; label = @1
      i32.const 12112
      i32.const 6224
      i32.const 88
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult.fromValue<~lib/string/String> (type 0) (param i32) (result i32)
    (local i32 i32)
    i32.const 4
    i32.const 54
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 0
    i32.store
    i32.const 4
    i32.const 55
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.store
    local.get 1)
  (func $generated/schema/ERC20Contract#get:id (type 0) (param i32) (result i32)
    local.get 0
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 11728
      i32.const 8208
      i32.const 268
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes)
  (func $generated/schema/Account#get:id (type 0) (param i32) (result i32)
    local.get 0
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 11728
      i32.const 8208
      i32.const 38
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes)
  (func $generated/schema/ERC20Balance#set:contract (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 12336
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/ERC20Balance#set:account (type 1) (param i32 i32)
    (local i64)
    local.get 1
    if  ;; label = @1
      local.get 1
      i64.extend_i32_u
      local.set 2
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 6
      i32.store
      local.get 1
      local.get 2
      i64.store offset=8
      local.get 0
      i32.const 12384
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    else
      local.get 0
      i32.const 12384
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#unset
    end)
  (func $handlers/fetch/erc20/fetchERC20 (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32 i64)
    i32.const 12000
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      block  ;; label = @2
        i32.const 8
        i32.const 53
        call $~lib/rt/stub/__new
        i32.const 12048
        local.get 0
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#constructor
        local.tee 4
        i32.const 6368
        i32.const 6400
        i32.const 0
        i32.const 20
        i32.const 12080
        call $~lib/rt/__newArray
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#tryCall
        local.tee 1
        i32.load
        i32.eqz
        if  ;; label = @3
          i32.const 4
          i32.const 54
          call $~lib/rt/stub/__new
          local.tee 1
          i32.const 0
          i32.store
          local.get 1
          i32.const 0
          i32.store
          br 1 (;@2;)
        end
        local.get 1
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
        i32.const 0
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult.fromValue<~lib/string/String>
        local.set 1
      end
      local.get 1
      local.set 2
      block  ;; label = @2
        local.get 4
        i32.const 6560
        i32.const 6592
        i32.const 0
        i32.const 20
        i32.const 12208
        call $~lib/rt/__newArray
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.SmartContract#tryCall
        local.tee 1
        i32.load
        i32.eqz
        if  ;; label = @3
          i32.const 4
          i32.const 54
          call $~lib/rt/stub/__new
          local.tee 1
          i32.const 0
          i32.store
          local.get 1
          i32.const 0
          i32.store
          br 1 (;@2;)
        end
        local.get 1
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
        i32.const 0
        call $~lib/array/Array<~lib/string/String>#__get
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toString
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult.fromValue<~lib/string/String>
        local.set 1
      end
      local.get 1
      local.set 3
      i32.const 4
      i32.const 52
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.set 1
      local.get 0
      i64.extend_i32_u
      local.set 5
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 4
      i32.const 6
      i32.store
      local.get 4
      local.get 5
      i64.store offset=8
      local.get 1
      i32.const 7472
      local.get 4
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 2
      i32.load
      if (result i32)  ;; label = @2
        local.get 2
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
      else
        i32.const 0
      end
      local.tee 2
      local.set 4
      local.get 2
      if (result i32)  ;; label = @2
        local.get 4
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
      else
        i32.const 0
      end
      if  ;; label = @2
        local.get 2
        i32.eqz
        if  ;; label = @3
          i32.const 11728
          i32.const 8208
          i32.const 297
          i32.const 49
          call $~lib/builtins/abort
          unreachable
        end
        local.get 2
        i64.extend_i32_u
        local.set 5
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 2
        i32.const 0
        i32.store
        local.get 2
        local.get 5
        i64.store offset=8
        local.get 1
        i32.const 6368
        local.get 2
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      else
        local.get 1
        i32.const 6368
        call $~lib/@graphprotocol/graph-ts/common/collections/Entity#unset
      end
      local.get 3
      i32.load
      if (result i32)  ;; label = @2
        local.get 3
        call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.CallResult<~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value>>#get:value
      else
        i32.const 0
      end
      local.tee 2
      local.set 3
      local.get 2
      if (result i32)  ;; label = @2
        local.get 3
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
      else
        i32.const 0
      end
      if  ;; label = @2
        local.get 2
        i32.eqz
        if  ;; label = @3
          i32.const 11728
          i32.const 8208
          i32.const 314
          i32.const 51
          call $~lib/builtins/abort
          unreachable
        end
        local.get 2
        i64.extend_i32_u
        local.set 5
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 2
        i32.const 0
        i32.store
        local.get 2
        local.get 5
        i64.store offset=8
        local.get 1
        i32.const 6560
        local.get 2
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      else
        local.get 1
        i32.const 6560
        call $~lib/@graphprotocol/graph-ts/common/collections/Entity#unset
      end
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 2
      i32.const 1
      i32.store
      local.get 2
      i64.const 18
      i64.store offset=8
      local.get 1
      i32.const 6720
      local.get 2
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      i32.const 12288
      local.get 1
      call $generated/schema/ERC20Contract#get:id
      call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
      i32.const 7200
      call $~lib/string/String#concat
      i32.const 12240
      call $~lib/string/String#concat
      local.tee 3
      call $~lib/@graphprotocol/graph-ts/index/store.get
      local.tee 2
      i32.eqz
      if  ;; label = @2
        i32.const 4
        i32.const 56
        call $~lib/rt/stub/__new
        call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
        local.set 2
        local.get 3
        i64.extend_i32_u
        local.set 5
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 3
        i32.const 0
        i32.store
        local.get 3
        local.get 5
        i64.store offset=8
        local.get 2
        i32.const 7472
        local.get 3
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
        local.get 2
        local.get 1
        call $generated/schema/ERC20Contract#get:id
        call $generated/schema/ERC20Balance#set:contract
        local.get 2
        i32.const 0
        call $generated/schema/ERC20Balance#set:account
        global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGDECIMAL_ZERO
        i64.extend_i32_u
        local.set 5
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 3
        i32.const 2
        i32.store
        local.get 3
        local.get 5
        i64.store offset=8
        local.get 2
        i32.const 12432
        local.get 3
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
        global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
        i64.extend_i32_u
        local.set 5
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 3
        i32.const 7
        i32.store
        local.get 3
        local.get 5
        i64.store offset=8
        local.get 2
        i32.const 12464
        local.get 3
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
        local.get 2
        i32.const 7472
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
        local.tee 3
        i32.eqz
        if  ;; label = @3
          i32.const 12512
          i32.const 8208
          i32.const 360
          i32.const 5
          call $~lib/builtins/abort
          unreachable
        end
        local.get 3
        if  ;; label = @3
          local.get 3
          i32.load
          if  ;; label = @4
            i32.const 12804
            local.get 3
            call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
            i32.store
            i32.const 12812
            local.get 3
            call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
            i32.store
            i32.const 12800
            i32.const 12796
            i32.load
            i32.const 2
            i32.shr_u
            i32.const 2544
            call $~lib/util/string/joinStringArray
            i32.const 8208
            i32.const 362
            i32.const 7
            call $~lib/builtins/abort
            unreachable
          end
          i32.const 12288
          local.get 3
          call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
          local.get 2
          call $~lib/@graphprotocol/graph-ts/index/store.set
        end
      end
      local.get 2
      i32.const 7472
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
      local.tee 2
      i32.eqz
      if  ;; label = @2
        i32.const 11728
        i32.const 8208
        i32.const 376
        i32.const 12
        call $~lib/builtins/abort
        unreachable
      end
      local.get 2
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      i64.extend_i32_u
      local.set 5
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 2
      i32.const 0
      i32.store
      local.get 2
      local.get 5
      i64.store offset=8
      local.get 1
      i32.const 12240
      local.get 2
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 1
      local.get 0
      call $generated/schema/TokenLockerContract#set:asAccount
      local.get 1
      i32.const 7472
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
      local.tee 4
      i32.eqz
      if  ;; label = @2
        i32.const 12848
        i32.const 8208
        i32.const 250
        i32.const 5
        call $~lib/builtins/abort
        unreachable
      end
      local.get 4
      if  ;; label = @2
        local.get 4
        i32.load
        i32.const 6
        i32.ne
        if  ;; label = @3
          i32.const 13140
          local.get 4
          call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
          i32.store
          i32.const 13148
          local.get 4
          call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
          i32.store
          i32.const 13136
          i32.const 13132
          i32.load
          i32.const 2
          i32.shr_u
          i32.const 2544
          call $~lib/util/string/joinStringArray
          i32.const 8208
          i32.const 252
          i32.const 7
          call $~lib/builtins/abort
          unreachable
        end
        i32.const 12000
        local.get 4
        call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes
        call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
        local.get 1
        call $~lib/@graphprotocol/graph-ts/index/store.set
      end
      local.get 0
      call $handlers/fetch/account/fetchAccount
      local.tee 2
      local.set 4
      local.get 0
      if  ;; label = @2
        local.get 0
        i64.extend_i32_u
        local.set 5
        i32.const 16
        i32.const 6
        call $~lib/rt/stub/__new
        local.tee 0
        i32.const 6
        i32.store
        local.get 0
        local.get 5
        i64.store offset=8
        local.get 4
        i32.const 13184
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      else
        local.get 4
        i32.const 13184
        call $~lib/@graphprotocol/graph-ts/common/collections/Entity#unset
      end
      local.get 2
      call $generated/schema/Account#save
    end
    local.get 1)
  (func $generated/schema/TokenLockerContract#get:id (type 0) (param i32) (result i32)
    local.get 0
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 11728
      i32.const 8208
      i32.const 1233
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toBytes)
  (func $generated/schema/ARVDeposit#set:emitter (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 13232
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/Transaction#set:timestamp (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 13280
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $handlers/wrappers/amxx/transactions.log (type 0) (param i32) (result i32)
    (local i32 i32 i32 i64)
    local.get 0
    i32.load offset=20
    i32.load
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    local.set 2
    i32.const 4
    i32.const 57
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.tee 1
    local.set 3
    local.get 2
    i64.extend_i32_u
    local.set 4
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 4
    i64.store offset=8
    local.get 3
    i32.const 7472
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $generated/schema/Transaction#set:timestamp
    local.get 0
    i32.load offset=16
    i32.load offset=28
    i64.extend_i32_u
    local.set 4
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 7
    i32.store
    local.get 0
    local.get 4
    i64.store offset=8
    local.get 1
    i32.const 13328
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 1
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 13376
      i32.const 8208
      i32.const 195
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 13668
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 13676
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 13664
        i32.const 13660
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2544
        call $~lib/util/string/joinStringArray
        i32.const 8208
        i32.const 197
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 13712
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 1
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end
    local.get 1)
  (func $generated/schema/Transaction#get:id (type 0) (param i32) (result i32)
    local.get 0
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 11728
      i32.const 8208
      i32.const 211
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString)
  (func $generated/schema/ARVDeposit#set:transaction (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 13760
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt (type 0) (param i32) (result i32)
    local.get 0
    i32.load
    i32.const 3
    i32.eq
    if (result i32)  ;; label = @1
      i32.const 1
    else
      local.get 0
      i32.load
      i32.const 4
      i32.eq
    end
    i32.eqz
    if  ;; label = @1
      i32.const 13808
      i32.const 6224
      i32.const 80
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    i64.load offset=8
    i32.wrap_i64)
  (func $generated/schema/ERC20Contract#get:decimals (type 0) (param i32) (result i32)
    local.get 0
    i32.const 6720
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 11728
      i32.const 8208
      i32.const 320
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toI32)
  (func $generated/schema/ARVDeposit#set:amount (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 7264
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/ARVDeposit#set:amountExact (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 13904
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/ARVDeposit#set:lockDuration (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 7296
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/ARVDeposit#set:owner (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 6
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 7344
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/ARVLock#set:auxoValue (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 14000
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/ARVLock#set:auxoValueExact (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 14048
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/ARVLock#set:arvValue (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 2
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 14096
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/ARVLock#set:arvValueExact (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 14144
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/ARVLock#set:lockedAt (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 7376
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $generated/schema/ARVLock#save (type 3) (param i32)
    (local i32)
    local.get 0
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 14192
      i32.const 8208
      i32.const 1307
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    if  ;; label = @1
      local.get 1
      i32.load
      if  ;; label = @2
        i32.const 14468
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 14476
        local.get 1
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 14464
        i32.const 14460
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2544
        call $~lib/util/string/joinStringArray
        i32.const 8208
        i32.const 1309
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 13952
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 0
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $handlers/fetch/tokenLocker/fetchARVLock (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i64)
    i32.const 13952
    local.get 0
    call $generated/schema/TokenLockerContract#get:id
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 7200
    call $~lib/string/String#concat
    local.get 1
    call $generated/schema/Account#get:id
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/string/String#concat
    local.tee 3
    call $~lib/@graphprotocol/graph-ts/index/store.get
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 4
      i32.const 59
      call $~lib/rt/stub/__new
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
      local.tee 2
      local.set 4
      local.get 3
      i64.extend_i32_u
      local.set 5
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 3
      i32.const 0
      i32.store
      local.get 3
      local.get 5
      i64.store offset=8
      local.get 4
      i32.const 7472
      local.get 3
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
      local.get 2
      local.get 0
      call $generated/schema/TokenLockerContract#get:id
      call $generated/schema/ERC20Balance#set:contract
      local.get 2
      local.get 1
      call $generated/schema/Account#get:id
      call $generated/schema/ERC20Balance#set:account
      local.get 2
      global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGDECIMAL_ZERO
      call $generated/schema/ARVLock#set:auxoValue
      local.get 2
      global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
      call $generated/schema/ARVLock#set:auxoValueExact
      local.get 2
      global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGDECIMAL_ZERO
      call $generated/schema/ARVLock#set:arvValue
      local.get 2
      global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
      call $generated/schema/ARVLock#set:arvValueExact
      local.get 2
      global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
      call $generated/schema/ARVLock#set:lockedAt
      local.get 2
      global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
      call $generated/schema/ARVDeposit#set:lockDuration
      local.get 2
      call $generated/schema/ARVLock#save
    end
    local.get 2)
  (func $generated/schema/ARVLock#get:auxoValueExact (type 0) (param i32) (result i32)
    local.get 0
    i32.const 14048
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 11728
      i32.const 8208
      i32.const 1367
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt)
  (func $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#div (type 2) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 14512
      i32.const 5152
      i32.const 200
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedBy)
  (func $~lib/typedarray/Uint8Array#__get (type 2) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=8
    i32.ge_u
    if  ;; label = @1
      i32.const 2000
      i32.const 2064
      i32.const 164
      i32.const 45
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 0
    i32.load offset=4
    i32.add
    i32.load8_u)
  (func $handlers/tokenLocker.utils/getARVValue (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    global.get $handlers/tokenLocker.utils/AVG_SECONDS_MONTH
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#div
    local.set 3
    local.get 0
    local.set 1
    global.get $handlers/tokenLocker.utils/maxRatioArray
    local.set 6
    i32.const 255
    i32.const 0
    local.get 3
    i32.load offset=8
    i32.const 0
    i32.gt_s
    local.tee 0
    if (result i32)  ;; label = @1
      local.get 3
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.sub
      call $~lib/typedarray/Uint8Array#__get
      i32.const 7
      i32.shr_u
      i32.const 1
      i32.eq
    else
      local.get 0
    end
    select
    local.set 5
    i32.const 4
    local.set 0
    loop  ;; label = @1
      local.get 0
      local.get 3
      i32.load offset=8
      i32.lt_s
      if  ;; label = @2
        local.get 3
        local.get 0
        call $~lib/typedarray/Uint8Array#__get
        local.get 5
        i32.ne
        if  ;; label = @3
          i32.const 14656
          local.get 3
          call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
          call $~lib/string/String#concat
          i32.const 14720
          call $~lib/string/String#concat
          i32.const 2640
          i32.const 150
          i32.const 9
          call $~lib/builtins/abort
          unreachable
        end
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end
    i32.const 12
    i32.const 11
    call $~lib/rt/stub/__new
    i32.const 4
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.tee 2
    i32.const 0
    local.get 5
    call $~lib/typedarray/Uint8Array#__set
    local.get 2
    i32.const 1
    local.get 5
    call $~lib/typedarray/Uint8Array#__set
    local.get 2
    i32.const 2
    local.get 5
    call $~lib/typedarray/Uint8Array#__set
    local.get 2
    i32.const 3
    local.get 5
    call $~lib/typedarray/Uint8Array#__set
    local.get 2
    local.get 3
    local.get 2
    i32.load offset=8
    local.get 3
    i32.load offset=8
    i32.lt_s
    select
    i32.load offset=8
    local.set 0
    loop  ;; label = @1
      local.get 0
      local.get 4
      i32.gt_s
      if  ;; label = @2
        local.get 2
        local.get 4
        local.get 3
        local.get 4
        call $~lib/typedarray/Uint8Array#__get
        call $~lib/typedarray/Uint8Array#__set
        local.get 4
        i32.const 1
        i32.add
        local.set 4
        br 1 (;@1;)
      end
    end
    local.get 1
    local.get 6
    local.get 2
    i32.const 3
    call $~lib/typedarray/Uint8Array#__get
    i32.const 8
    i32.shl
    local.get 2
    i32.const 2
    call $~lib/typedarray/Uint8Array#__get
    i32.or
    i32.const 8
    i32.shl
    local.get 2
    i32.const 1
    call $~lib/typedarray/Uint8Array#__get
    i32.or
    i32.const 8
    i32.shl
    local.get 2
    i32.const 0
    call $~lib/typedarray/Uint8Array#__get
    i32.or
    call $~lib/array/Array<~lib/string/String>#__get
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#times
    global.get $handlers/tokenLocker.utils/ONE_ETHER
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#div)
  (func $generated/schema/ARVLock#get:arvValueExact (type 0) (param i32) (result i32)
    local.get 0
    i32.const 14144
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 11728
      i32.const 8208
      i32.const 1385
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt)
  (func $generated/schema/ARVLock#get:id (type 0) (param i32) (result i32)
    local.get 0
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 11728
      i32.const 8208
      i32.const 1323
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toString)
  (func $generated/schema/ARVDeposit#set:lock (type 1) (param i32 i32)
    (local i64)
    local.get 1
    i64.extend_i32_u
    local.set 2
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 2
    i64.store offset=8
    local.get 0
    i32.const 14768
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set)
  (func $handlers/tokenLocker/handleDeposited (type 3) (param i32)
    (local i32 i32 i32 i32 i32 f64 i64)
    local.get 0
    i32.load offset=16
    i32.load offset=28
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    i32.const 7504
    call $~lib/string/String#concat
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/string/String#concat
    local.set 2
    i32.const 4
    i32.const 39
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 3
    local.get 2
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 7
    i64.store offset=8
    local.get 3
    i32.const 7472
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load
    call $handlers/fetch/tokenLocker/fetchTokenLocker
    local.tee 2
    call $generated/schema/TokenLockerContract#get:veToken
    call $~lib/@graphprotocol/graph-ts/common/numbers/Address.fromBytes
    call $handlers/fetch/erc20/fetchERC20
    local.set 4
    local.get 3
    local.get 2
    call $generated/schema/TokenLockerContract#get:id
    call $generated/schema/ARVDeposit#set:emitter
    local.get 3
    local.get 2
    call $generated/schema/TokenLockerContract#get:id
    call $generated/schema/ERC20Balance#set:contract
    local.get 3
    local.get 0
    call $handlers/wrappers/amxx/transactions.log
    call $generated/schema/Transaction#get:id
    call $generated/schema/ARVDeposit#set:transaction
    local.get 3
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $generated/schema/Transaction#set:timestamp
    i32.const 4
    i32.const 58
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 1
    local.get 4
    call $generated/schema/ERC20Contract#get:decimals
    f64.convert_i32_s
    local.set 6
    local.get 3
    local.get 1
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.get 6
    i32.trunc_f64_u
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
    call $generated/schema/ARVDeposit#set:amount
    i32.const 4
    i32.const 58
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/ARVDeposit#set:amountExact
    i32.const 4
    i32.const 58
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/ARVDeposit#set:lockDuration
    i32.const 4
    i32.const 58
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $handlers/fetch/account/fetchAccount
    local.tee 1
    call $generated/schema/Account#get:id
    call $generated/schema/ARVDeposit#set:owner
    local.get 2
    local.get 1
    call $handlers/fetch/tokenLocker/fetchARVLock
    local.set 2
    i32.const 4
    i32.const 58
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/ARVLock#set:auxoValueExact
    local.get 2
    call $generated/schema/ARVLock#get:auxoValueExact
    local.set 1
    local.get 4
    call $generated/schema/ERC20Contract#get:decimals
    f64.convert_i32_s
    local.set 6
    local.get 2
    local.get 1
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.get 6
    i32.trunc_f64_u
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
    call $generated/schema/ARVLock#set:auxoValue
    local.get 2
    call $generated/schema/ARVLock#get:auxoValueExact
    local.set 5
    i32.const 4
    i32.const 58
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 5
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $handlers/tokenLocker.utils/getARVValue
    call $generated/schema/ARVLock#set:arvValueExact
    local.get 2
    call $generated/schema/ARVLock#get:arvValueExact
    local.set 1
    local.get 4
    call $generated/schema/ERC20Contract#get:decimals
    f64.convert_i32_s
    local.set 6
    local.get 2
    local.get 1
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.get 6
    i32.trunc_f64_u
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
    call $generated/schema/ARVLock#set:arvValue
    i32.const 4
    i32.const 58
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 0
    i32.store
    local.get 4
    local.get 0
    i32.store
    local.get 2
    local.get 4
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/ARVDeposit#set:lockDuration
    local.get 2
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $generated/schema/ARVLock#set:lockedAt
    local.get 2
    call $generated/schema/ARVLock#save
    local.get 3
    local.get 2
    call $generated/schema/ARVLock#get:id
    call $generated/schema/ARVDeposit#set:lock
    local.get 3
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 14800
      i32.const 8208
      i32.const 1454
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 15092
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 15100
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 15088
        i32.const 15084
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2544
        call $~lib/util/string/joinStringArray
        i32.const 8208
        i32.const 1456
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 15136
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 3
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32 (type 0) (param i32) (result i32)
    (local i64)
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i64.extend_i32_u
    local.set 1
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 0
    i32.const 3
    i32.store
    local.get 0
    local.get 1
    i64.store offset=8
    local.get 0)
  (func $~lib/matchstick-as/assembly/assert/assert.i32Equals (type 3) (param i32)
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    local.get 0
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromI32
    call $~lib/matchstick-as/assembly/assert/_assert.equals
    i32.eqz
    if  ;; label = @1
      i32.const 15184
      i32.const 15248
      i32.const 19
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $~lib/matchstick-as/assembly/assert/assert.fieldEquals (type 6) (param i32 i32 i32)
    i32.const 13952
    local.get 0
    local.get 1
    local.get 2
    call $~lib/matchstick-as/assembly/assert/_assert.fieldEquals
    i32.eqz
    if  ;; label = @1
      i32.const 15184
      i32.const 15248
      i32.const 13
      i32.const 7
      call $~lib/builtins/abort
      unreachable
    end)
  (func $generated/schema/ARVLock#get:lockDuration (type 0) (param i32) (result i32)
    local.get 0
    i32.const 7296
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 11728
      i32.const 8208
      i32.const 1403
      i32.const 12
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/value/Value#toBigInt)
  (func $handlers/tokenLocker/handleIncreasedAmount (type 3) (param i32)
    (local i32 i32 i32 i32 i32 f64 i64)
    local.get 0
    i32.load offset=16
    i32.load offset=28
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    i32.const 7504
    call $~lib/string/String#concat
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/string/String#concat
    local.set 1
    i32.const 4
    i32.const 60
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 3
    local.get 1
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 7
    i64.store offset=8
    local.get 3
    i32.const 7472
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load
    call $handlers/fetch/tokenLocker/fetchTokenLocker
    local.tee 1
    call $generated/schema/TokenLockerContract#get:veToken
    call $~lib/@graphprotocol/graph-ts/common/numbers/Address.fromBytes
    call $handlers/fetch/erc20/fetchERC20
    local.set 5
    local.get 3
    local.get 1
    call $generated/schema/TokenLockerContract#get:id
    call $generated/schema/ARVDeposit#set:emitter
    local.get 3
    local.get 1
    call $generated/schema/TokenLockerContract#get:id
    call $generated/schema/ERC20Balance#set:contract
    local.get 3
    local.get 0
    call $handlers/wrappers/amxx/transactions.log
    call $generated/schema/Transaction#get:id
    call $generated/schema/ARVDeposit#set:transaction
    local.get 3
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $generated/schema/Transaction#set:timestamp
    i32.const 4
    i32.const 61
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 2
    local.get 5
    call $generated/schema/ERC20Contract#get:decimals
    f64.convert_i32_s
    local.set 6
    local.get 3
    local.get 2
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.get 6
    i32.trunc_f64_u
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
    call $generated/schema/ARVDeposit#set:amount
    i32.const 4
    i32.const 61
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 3
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/ARVDeposit#set:amountExact
    i32.const 4
    i32.const 61
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 3
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $handlers/fetch/account/fetchAccount
    local.tee 2
    call $generated/schema/Account#get:id
    call $generated/schema/ARVDeposit#set:owner
    local.get 1
    local.get 2
    call $handlers/fetch/tokenLocker/fetchARVLock
    local.tee 1
    call $generated/schema/ARVLock#get:auxoValueExact
    local.set 2
    i32.const 4
    i32.const 61
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 0
    i32.store
    local.get 4
    local.get 0
    i32.store
    local.get 4
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 4
    local.get 2
    i32.eqz
    if  ;; label = @1
      i32.const 15456
      i32.const 5152
      i32.const 182
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 2
    local.get 4
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.plus
    call $generated/schema/ARVLock#set:auxoValueExact
    local.get 1
    call $generated/schema/ARVLock#get:auxoValueExact
    local.set 2
    local.get 5
    call $generated/schema/ERC20Contract#get:decimals
    f64.convert_i32_s
    local.set 6
    local.get 1
    local.get 2
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.get 6
    i32.trunc_f64_u
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
    call $generated/schema/ARVLock#set:auxoValue
    local.get 1
    local.get 1
    call $generated/schema/ARVLock#get:auxoValueExact
    local.get 1
    call $generated/schema/ARVLock#get:lockDuration
    call $handlers/tokenLocker.utils/getARVValue
    call $generated/schema/ARVLock#set:arvValueExact
    local.get 1
    call $generated/schema/ARVLock#get:arvValueExact
    local.set 2
    local.get 5
    call $generated/schema/ERC20Contract#get:decimals
    f64.convert_i32_s
    local.set 6
    local.get 1
    local.get 2
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.get 6
    i32.trunc_f64_u
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
    call $generated/schema/ARVLock#set:arvValue
    local.get 1
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $generated/schema/ARVLock#set:lockedAt
    local.get 1
    call $generated/schema/ARVLock#save
    local.get 3
    local.get 1
    call $generated/schema/ARVLock#get:id
    call $generated/schema/ARVDeposit#set:lock
    local.get 3
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 15584
      i32.const 8208
      i32.const 1671
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 15892
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 15900
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 15888
        i32.const 15884
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2544
        call $~lib/util/string/joinStringArray
        i32.const 8208
        i32.const 1673
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 15936
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 3
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $handlers/tokenLocker/handleIncreasedDuration (type 3) (param i32)
    (local i32 i32 i32 i32 i32 f64 i64)
    local.get 0
    i32.load offset=16
    i32.load offset=28
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    i32.const 7504
    call $~lib/string/String#concat
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/string/String#concat
    local.set 2
    i32.const 4
    i32.const 62
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 3
    local.get 2
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 7
    i64.store offset=8
    local.get 3
    i32.const 7472
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load
    call $handlers/fetch/tokenLocker/fetchTokenLocker
    local.tee 2
    call $generated/schema/TokenLockerContract#get:veToken
    call $~lib/@graphprotocol/graph-ts/common/numbers/Address.fromBytes
    call $handlers/fetch/erc20/fetchERC20
    local.set 4
    local.get 3
    local.get 2
    call $generated/schema/TokenLockerContract#get:id
    call $generated/schema/ARVDeposit#set:emitter
    local.get 3
    local.get 2
    call $generated/schema/TokenLockerContract#get:id
    call $generated/schema/ERC20Balance#set:contract
    local.get 3
    local.get 0
    call $handlers/wrappers/amxx/transactions.log
    call $generated/schema/Transaction#get:id
    call $generated/schema/ARVDeposit#set:transaction
    local.get 3
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $generated/schema/Transaction#set:timestamp
    i32.const 4
    i32.const 63
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 1
    local.get 4
    call $generated/schema/ERC20Contract#get:decimals
    f64.convert_i32_s
    local.set 6
    local.get 3
    local.get 1
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.get 6
    i32.trunc_f64_u
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
    call $generated/schema/ARVDeposit#set:amount
    i32.const 4
    i32.const 63
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/ARVDeposit#set:amountExact
    i32.const 4
    i32.const 63
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/ARVDeposit#set:lockDuration
    i32.const 4
    i32.const 63
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 2
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/ARVLock#set:lockedAt
    i32.const 4
    i32.const 63
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 3
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $handlers/fetch/account/fetchAccount
    local.tee 1
    call $generated/schema/Account#get:id
    call $generated/schema/ARVDeposit#set:owner
    local.get 2
    local.get 1
    call $handlers/fetch/tokenLocker/fetchARVLock
    local.tee 2
    call $generated/schema/ARVLock#get:auxoValueExact
    local.set 5
    i32.const 4
    i32.const 63
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 5
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $handlers/tokenLocker.utils/getARVValue
    call $generated/schema/ARVLock#set:arvValueExact
    local.get 2
    call $generated/schema/ARVLock#get:arvValueExact
    local.set 1
    local.get 4
    call $generated/schema/ERC20Contract#get:decimals
    f64.convert_i32_s
    local.set 6
    local.get 2
    local.get 1
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.get 6
    i32.trunc_f64_u
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
    call $generated/schema/ARVLock#set:arvValue
    i32.const 4
    i32.const 63
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 0
    i32.store
    local.get 4
    local.get 0
    i32.store
    local.get 2
    local.get 4
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/ARVDeposit#set:lockDuration
    local.get 2
    call $generated/schema/ARVLock#save
    local.get 3
    local.get 2
    call $generated/schema/ARVLock#get:id
    call $generated/schema/ARVDeposit#set:lock
    local.get 3
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 16112
      i32.const 8208
      i32.const 1777
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 16436
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 16444
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 16432
        i32.const 16428
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2544
        call $~lib/util/string/joinStringArray
        i32.const 8208
        i32.const 1779
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 16480
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 3
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $handlers/tokenLocker/handleWithdrawn (type 3) (param i32)
    (local i32 i32 i32 i32 i32 f64 i64)
    local.get 0
    i32.load offset=16
    i32.load offset=28
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    i32.const 7504
    call $~lib/string/String#concat
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/string/String#concat
    local.set 1
    i32.const 4
    i32.const 64
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 3
    local.get 1
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 7
    i64.store offset=8
    local.get 3
    i32.const 7472
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load
    call $handlers/fetch/tokenLocker/fetchTokenLocker
    local.tee 1
    call $generated/schema/TokenLockerContract#get:veToken
    call $~lib/@graphprotocol/graph-ts/common/numbers/Address.fromBytes
    call $handlers/fetch/erc20/fetchERC20
    local.set 4
    local.get 3
    local.get 1
    call $generated/schema/TokenLockerContract#get:id
    call $generated/schema/ARVDeposit#set:emitter
    local.get 3
    local.get 1
    call $generated/schema/TokenLockerContract#get:id
    call $generated/schema/ERC20Balance#set:contract
    local.get 3
    local.get 0
    call $handlers/wrappers/amxx/transactions.log
    call $generated/schema/Transaction#get:id
    call $generated/schema/ARVDeposit#set:transaction
    local.get 3
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $generated/schema/Transaction#set:timestamp
    i32.const 4
    i32.const 65
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 2
    local.get 4
    call $generated/schema/ERC20Contract#get:decimals
    f64.convert_i32_s
    local.set 6
    local.get 3
    local.get 2
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.get 6
    i32.trunc_f64_u
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
    call $generated/schema/ARVDeposit#set:amount
    i32.const 4
    i32.const 65
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 3
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/ARVDeposit#set:amountExact
    i32.const 4
    i32.const 65
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 3
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $handlers/fetch/account/fetchAccount
    local.tee 2
    call $generated/schema/Account#get:id
    call $generated/schema/ARVDeposit#set:owner
    local.get 1
    local.get 2
    call $handlers/fetch/tokenLocker/fetchARVLock
    local.tee 1
    call $generated/schema/ARVLock#get:auxoValueExact
    local.set 2
    i32.const 4
    i32.const 65
    call $~lib/rt/stub/__new
    local.tee 5
    i32.const 0
    i32.store
    local.get 5
    local.get 0
    i32.store
    local.get 5
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 0
    local.get 2
    i32.eqz
    if  ;; label = @1
      i32.const 16672
      i32.const 5152
      i32.const 188
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 1
    local.get 2
    local.get 0
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.minus
    call $generated/schema/ARVLock#set:auxoValueExact
    local.get 1
    call $generated/schema/ARVLock#get:auxoValueExact
    local.set 0
    local.get 4
    call $generated/schema/ERC20Contract#get:decimals
    f64.convert_i32_s
    local.set 6
    local.get 1
    local.get 0
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.get 6
    i32.trunc_f64_u
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
    call $generated/schema/ARVLock#set:auxoValue
    local.get 1
    local.get 1
    call $generated/schema/ARVLock#get:auxoValueExact
    local.get 1
    call $generated/schema/ARVLock#get:lockDuration
    call $handlers/tokenLocker.utils/getARVValue
    call $generated/schema/ARVLock#set:arvValueExact
    local.get 1
    call $generated/schema/ARVLock#get:arvValueExact
    local.set 0
    local.get 4
    call $generated/schema/ERC20Contract#get:decimals
    f64.convert_i32_s
    local.set 6
    local.get 1
    local.get 0
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.get 6
    i32.trunc_f64_u
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
    call $generated/schema/ARVLock#set:arvValue
    local.get 1
    call $generated/schema/ARVLock#save
    local.get 3
    local.get 1
    call $generated/schema/ARVLock#get:id
    call $generated/schema/ARVDeposit#set:lock
    local.get 3
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 16816
      i32.const 8208
      i32.const 1901
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 17108
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 17116
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 17104
        i32.const 17100
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2544
        call $~lib/util/string/joinStringArray
        i32.const 8208
        i32.const 1903
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 17152
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 3
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $handlers/tokenLocker/handleBoostedToMax (type 3) (param i32)
    (local i32 i32 i32 i32 f64 i64)
    local.get 0
    i32.load offset=16
    i32.load offset=28
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    i32.const 7504
    call $~lib/string/String#concat
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/string/String#concat
    local.set 1
    i32.const 4
    i32.const 66
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 3
    local.get 1
    i64.extend_i32_u
    local.set 6
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 6
    i64.store offset=8
    local.get 3
    i32.const 7472
    local.get 1
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load
    call $handlers/fetch/tokenLocker/fetchTokenLocker
    local.tee 1
    call $generated/schema/TokenLockerContract#get:veToken
    call $~lib/@graphprotocol/graph-ts/common/numbers/Address.fromBytes
    call $handlers/fetch/erc20/fetchERC20
    local.set 4
    local.get 3
    local.get 1
    call $generated/schema/TokenLockerContract#get:id
    call $generated/schema/ARVDeposit#set:emitter
    local.get 3
    local.get 1
    call $generated/schema/TokenLockerContract#get:id
    call $generated/schema/ERC20Balance#set:contract
    local.get 3
    local.get 0
    call $handlers/wrappers/amxx/transactions.log
    call $generated/schema/Transaction#get:id
    call $generated/schema/ARVDeposit#set:transaction
    local.get 3
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $generated/schema/Transaction#set:timestamp
    i32.const 4
    i32.const 67
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 2
    local.get 4
    call $generated/schema/ERC20Contract#get:decimals
    f64.convert_i32_s
    local.set 5
    local.get 3
    local.get 2
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.get 5
    i32.trunc_f64_u
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
    call $generated/schema/ARVDeposit#set:amount
    i32.const 4
    i32.const 67
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 3
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/ARVDeposit#set:amountExact
    i32.const 4
    i32.const 67
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 3
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $handlers/fetch/account/fetchAccount
    local.tee 2
    call $generated/schema/Account#get:id
    call $generated/schema/ARVDeposit#set:owner
    local.get 1
    local.get 2
    call $handlers/fetch/tokenLocker/fetchARVLock
    local.tee 1
    call $generated/schema/ARVLock#get:lockDuration
    global.get $handlers/tokenLocker.utils/MAX_LOCK_DURATION
    i32.ne
    if  ;; label = @1
      local.get 1
      global.get $handlers/tokenLocker.utils/MAX_LOCK_DURATION
      call $generated/schema/ARVDeposit#set:lockDuration
      local.get 1
      local.get 1
      call $generated/schema/ARVLock#get:auxoValueExact
      local.get 1
      call $generated/schema/ARVLock#get:lockDuration
      call $handlers/tokenLocker.utils/getARVValue
      call $generated/schema/ARVLock#set:arvValueExact
      local.get 1
      call $generated/schema/ARVLock#get:arvValueExact
      local.set 2
      local.get 4
      call $generated/schema/ERC20Contract#get:decimals
      f64.convert_i32_s
      local.set 5
      local.get 1
      local.get 2
      i32.const 10
      call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
      local.get 5
      i32.trunc_f64_u
      call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
      call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
      call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
      call $generated/schema/ARVLock#set:arvValue
    end
    local.get 1
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $generated/schema/ARVLock#set:lockedAt
    local.get 1
    call $generated/schema/ARVLock#save
    local.get 3
    local.get 1
    call $generated/schema/ARVLock#get:id
    call $generated/schema/ARVDeposit#set:lock
    local.get 3
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 17312
      i32.const 8208
      i32.const 1567
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 17604
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 17612
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 17600
        i32.const 17596
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2544
        call $~lib/util/string/joinStringArray
        i32.const 8208
        i32.const 1569
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 17648
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 3
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $handlers/tokenLocker/handleEarlyExit (type 3) (param i32)
    (local i32 i32 i32 i32 i64 f64)
    local.get 0
    i32.load offset=16
    i32.load offset=28
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    i32.const 7504
    call $~lib/string/String#concat
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/string/String#concat
    local.set 3
    i32.const 4
    i32.const 68
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 1
    local.get 3
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 0
    i32.store
    local.get 3
    local.get 5
    i64.store offset=8
    local.get 1
    i32.const 7472
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load
    call $handlers/fetch/tokenLocker/fetchTokenLocker
    local.tee 3
    call $generated/schema/TokenLockerContract#get:veToken
    call $~lib/@graphprotocol/graph-ts/common/numbers/Address.fromBytes
    call $handlers/fetch/erc20/fetchERC20
    local.set 4
    local.get 1
    local.get 3
    call $generated/schema/TokenLockerContract#get:id
    call $generated/schema/ARVDeposit#set:emitter
    local.get 1
    local.get 3
    call $generated/schema/TokenLockerContract#get:id
    call $generated/schema/ERC20Balance#set:contract
    local.get 1
    local.get 0
    call $handlers/wrappers/amxx/transactions.log
    call $generated/schema/Transaction#get:id
    call $generated/schema/ARVDeposit#set:transaction
    local.get 1
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $generated/schema/Transaction#set:timestamp
    i32.const 4
    i32.const 69
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 2
    local.get 4
    call $generated/schema/ERC20Contract#get:decimals
    f64.convert_i32_s
    local.set 6
    local.get 1
    local.get 2
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.get 6
    i32.trunc_f64_u
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
    call $generated/schema/ARVDeposit#set:amount
    i32.const 4
    i32.const 69
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/ARVDeposit#set:amountExact
    i32.const 4
    i32.const 69
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 0
    i32.store
    local.get 2
    local.get 0
    i32.store
    local.get 1
    local.get 2
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $handlers/fetch/account/fetchAccount
    local.tee 0
    call $generated/schema/Account#get:id
    call $generated/schema/ARVDeposit#set:owner
    local.get 3
    local.get 0
    call $handlers/fetch/tokenLocker/fetchARVLock
    local.tee 0
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGDECIMAL_ZERO
    call $generated/schema/ARVLock#set:auxoValue
    local.get 0
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $generated/schema/ARVLock#set:auxoValueExact
    local.get 0
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGDECIMAL_ZERO
    call $generated/schema/ARVLock#set:arvValue
    local.get 0
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $generated/schema/ARVLock#set:arvValueExact
    local.get 0
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $generated/schema/ARVDeposit#set:lockDuration
    local.get 0
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $generated/schema/ARVLock#set:lockedAt
    local.get 0
    call $generated/schema/ARVLock#save
    local.get 1
    local.get 0
    call $generated/schema/ARVLock#get:id
    call $generated/schema/ARVDeposit#set:lock
    local.get 1
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 17792
      i32.const 8208
      i32.const 2005
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 18084
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 18092
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 18080
        i32.const 18076
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2544
        call $~lib/util/string/joinStringArray
        i32.const 8208
        i32.const 2007
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 18128
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 1
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $start:tests/token-locker.test~anonymous|0~anonymous|2 (type 5)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 100
    call $tests/token-locker.test/NumContainer#constructor
    local.set 9
    i32.const 50
    call $tests/token-locker.test/NumContainer#constructor
    local.set 3
    i32.const 150
    call $tests/token-locker.test/NumContainer#constructor
    local.set 10
    i32.const 7088
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 6
    i32.const 24
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 0
    i32.const 30
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.set 8
    local.get 0
    global.get $handlers/tokenLocker.utils/AVG_SECONDS_MONTH
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#times
    local.set 11
    local.get 8
    global.get $handlers/tokenLocker.utils/AVG_SECONDS_MONTH
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#times
    local.set 12
    global.get $tests/token-locker.test/MOCK_ADDRESS
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 7200
    call $~lib/string/String#concat
    local.get 6
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/string/String#concat
    local.set 0
    local.get 9
    i32.load offset=4
    local.get 11
    local.get 6
    call $tests/token-locker.helpers/createDepositedEvent
    local.set 13
    local.get 3
    i32.load offset=4
    local.set 5
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 8
    i32.load offset=16
    i32.const 5
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=28
    local.get 8
    i32.load offset=16
    i32.const 5
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=40
    local.get 8
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 8
    i32.load offset=24
    local.set 1
    local.get 5
    i64.extend_i32_u
    local.set 15
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 5
    i32.const 4
    i32.store
    local.get 5
    local.get 15
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 7264
    i32.store
    local.get 2
    local.get 5
    i32.store offset=4
    local.get 1
    local.get 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 8
    i32.load offset=24
    local.set 2
    local.get 6
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 1
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 5
    i32.const 7344
    i32.store
    local.get 5
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 5
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 3
    i32.load offset=4
    local.set 2
    local.get 13
    i32.load offset=16
    i32.load offset=40
    local.set 4
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 5
    i32.load offset=16
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=28
    local.get 5
    i32.load offset=16
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=40
    local.get 5
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 5
    i32.load offset=24
    local.set 7
    local.get 2
    i64.extend_i32_u
    local.set 15
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 4
    i32.store
    local.get 2
    local.get 15
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7264
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 7
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 5
    i32.load offset=24
    local.set 7
    local.get 12
    i64.extend_i32_u
    local.set 15
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 4
    i32.store
    local.get 2
    local.get 15
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7296
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 7
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 5
    i32.load offset=24
    local.set 7
    local.get 4
    i64.extend_i32_u
    local.set 15
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 4
    i32.store
    local.get 2
    local.get 15
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7376
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 7
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 5
    i32.load offset=24
    local.set 1
    local.get 6
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 4
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 7344
    i32.store
    local.get 2
    local.get 4
    i32.store offset=4
    local.get 1
    local.get 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 3
    i32.load offset=4
    local.set 3
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 2
    i32.load offset=16
    i32.const 20
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=28
    local.get 2
    i32.load offset=16
    i32.const 20
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=40
    local.get 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 2
    i32.load offset=24
    local.set 4
    local.get 3
    i64.extend_i32_u
    local.set 15
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 4
    i32.store
    local.get 3
    local.get 15
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7264
    i32.store
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 4
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 2
    i32.load offset=24
    local.set 1
    local.get 6
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 4
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 7344
    i32.store
    local.get 3
    local.get 4
    i32.store offset=4
    local.get 1
    local.get 3
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 10
    i32.load offset=4
    local.set 1
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 3
    i32.load offset=16
    i32.const 1000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=28
    local.get 3
    i32.load offset=16
    i32.const 1000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=40
    local.get 3
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 3
    i32.load offset=24
    local.set 7
    local.get 1
    i64.extend_i32_u
    local.set 15
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 4
    i32.store
    local.get 1
    local.get 15
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 7264
    i32.store
    local.get 4
    local.get 1
    i32.store offset=4
    local.get 7
    local.get 4
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 3
    i32.load offset=24
    local.set 4
    local.get 6
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 7
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 7344
    i32.store
    local.get 1
    local.get 7
    i32.store offset=4
    local.get 4
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 9
    i32.load offset=4
    local.set 4
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 1
    i32.load offset=16
    i32.const 2000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=28
    local.get 1
    i32.load offset=16
    i32.const 2000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=40
    local.get 1
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 1
    i32.load offset=24
    local.set 7
    local.get 6
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 14
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 6
    i32.const 7424
    i32.store
    local.get 6
    local.get 14
    i32.store offset=4
    local.get 7
    local.get 6
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 1
    i32.load offset=24
    local.set 7
    local.get 4
    i64.extend_i32_u
    local.set 15
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 6
    i32.const 4
    i32.store
    local.get 6
    local.get 15
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 7264
    i32.store
    local.get 4
    local.get 6
    i32.store offset=4
    local.get 7
    local.get 4
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 13
    call $handlers/tokenLocker/handleDeposited
    i32.const 15136
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 13952
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    local.get 0
    i32.const 14048
    local.get 9
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14000
    local.get 9
    i32.load offset=4
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.const 18
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#div
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 7376
    local.get 13
    i32.load offset=16
    i32.load offset=40
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 7296
    local.get 11
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14144
    i32.const 15344
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14096
    i32.const 15408
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 8
    call $handlers/tokenLocker/handleIncreasedAmount
    i32.const 13952
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 15936
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    local.get 0
    i32.const 14048
    local.get 10
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14000
    local.get 10
    i32.load offset=4
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.const 18
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#div
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 7376
    local.get 8
    i32.load offset=16
    i32.load offset=40
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 7296
    local.get 11
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14144
    i32.const 16000
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14096
    i32.const 16064
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 5
    call $handlers/tokenLocker/handleIncreasedDuration
    i32.const 13952
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 16480
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    local.get 0
    i32.const 14048
    local.get 10
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14000
    local.get 10
    i32.load offset=4
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.const 18
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#div
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 7376
    local.get 8
    i32.load offset=16
    i32.load offset=40
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 7296
    local.get 12
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14144
    i32.const 16544
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14096
    i32.const 16608
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 2
    call $handlers/tokenLocker/handleWithdrawn
    i32.const 13952
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 17152
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    local.get 0
    i32.const 14048
    local.get 9
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14000
    local.get 9
    i32.load offset=4
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.const 18
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#div
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 7376
    local.get 8
    i32.load offset=16
    i32.load offset=40
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 7296
    local.get 12
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14144
    i32.const 17200
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14096
    i32.const 17264
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 3
    call $handlers/tokenLocker/handleBoostedToMax
    i32.const 13952
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 17648
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    local.get 0
    i32.const 14048
    local.get 9
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14000
    local.get 9
    i32.load offset=4
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.const 18
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#div
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 7376
    local.get 3
    i32.load offset=16
    i32.load offset=40
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 7296
    global.get $handlers/tokenLocker.utils/AVG_SECONDS_MONTH
    i32.const 36
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#times
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14144
    i32.const 17696
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14096
    i32.const 17760
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 1
    call $handlers/tokenLocker/handleEarlyExit
    i32.const 13952
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 18128
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    local.get 0
    i32.const 14048
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14000
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 7376
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 7296
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14144
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 0
    i32.const 14096
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $handlers/tokenLocker/handleEjected (type 3) (param i32)
    (local i32 i32 i32 i32 i64 f64)
    local.get 0
    i32.load offset=16
    i32.load offset=28
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    i32.const 7504
    call $~lib/string/String#concat
    local.get 0
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/string/String#concat
    local.set 3
    i32.const 4
    i32.const 71
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    local.set 2
    local.get 3
    i64.extend_i32_u
    local.set 5
    i32.const 16
    i32.const 6
    call $~lib/rt/stub/__new
    local.tee 3
    i32.const 0
    i32.store
    local.get 3
    local.get 5
    i64.store offset=8
    local.get 2
    i32.const 7472
    local.get 3
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    local.get 0
    i32.load
    call $handlers/fetch/tokenLocker/fetchTokenLocker
    local.tee 3
    call $generated/schema/TokenLockerContract#get:veToken
    call $~lib/@graphprotocol/graph-ts/common/numbers/Address.fromBytes
    call $handlers/fetch/erc20/fetchERC20
    local.set 4
    local.get 2
    local.get 3
    call $generated/schema/TokenLockerContract#get:id
    call $generated/schema/ARVDeposit#set:emitter
    local.get 3
    call $generated/schema/TokenLockerContract#get:id
    local.tee 1
    if  ;; label = @1
      local.get 1
      i64.extend_i32_u
      local.set 5
      i32.const 16
      i32.const 6
      call $~lib/rt/stub/__new
      local.tee 1
      i32.const 6
      i32.store
      local.get 1
      local.get 5
      i64.store offset=8
      local.get 2
      i32.const 12336
      local.get 1
      call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#set
    else
      local.get 2
      i32.const 12336
      call $~lib/@graphprotocol/graph-ts/common/collections/Entity#unset
    end
    local.get 2
    local.get 0
    call $handlers/wrappers/amxx/transactions.log
    call $generated/schema/Transaction#get:id
    call $generated/schema/ARVDeposit#set:transaction
    local.get 2
    local.get 0
    i32.load offset=16
    i32.load offset=40
    call $generated/schema/Transaction#set:timestamp
    i32.const 4
    i32.const 72
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    local.set 1
    local.get 4
    call $generated/schema/ERC20Contract#get:decimals
    f64.convert_i32_s
    local.set 6
    local.get 2
    local.get 1
    i32.const 10
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    local.get 6
    i32.trunc_f64_u
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.pow
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    call $~lib/@graphprotocol/graph-ts/common/numbers/bigInt.dividedByDecimal
    call $generated/schema/ARVDeposit#set:amount
    i32.const 4
    i32.const 72
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 0
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toBigInt
    call $generated/schema/ARVDeposit#set:amountExact
    i32.const 4
    i32.const 72
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 0
    i32.store
    local.get 1
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.load
    i32.load offset=24
    i32.const 1
    call $~lib/array/Array<~lib/string/String>#__get
    i32.load offset=4
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value#toAddress
    call $handlers/fetch/account/fetchAccount
    local.tee 0
    call $generated/schema/Account#get:id
    call $generated/schema/ARVDeposit#set:owner
    local.get 3
    local.get 0
    call $handlers/fetch/tokenLocker/fetchARVLock
    local.tee 0
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGDECIMAL_ZERO
    call $generated/schema/ARVLock#set:auxoValue
    local.get 0
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $generated/schema/ARVLock#set:auxoValueExact
    local.get 0
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGDECIMAL_ZERO
    call $generated/schema/ARVLock#set:arvValue
    local.get 0
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $generated/schema/ARVLock#set:arvValueExact
    local.get 0
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $generated/schema/ARVDeposit#set:lockDuration
    local.get 0
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $generated/schema/ARVLock#set:lockedAt
    local.get 0
    call $generated/schema/ARVLock#save
    local.get 2
    local.get 0
    call $generated/schema/ARVLock#get:id
    call $generated/schema/ARVDeposit#set:lock
    local.get 2
    i32.const 7472
    call $~lib/@graphprotocol/graph-ts/common/collections/TypedMap<~lib/string/String_~lib/@graphprotocol/graph-ts/common/value/Value>#get
    local.tee 0
    i32.eqz
    if  ;; label = @1
      i32.const 18240
      i32.const 8208
      i32.const 2109
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    local.get 0
    if  ;; label = @1
      local.get 0
      i32.load
      if  ;; label = @2
        i32.const 18516
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayData
        i32.store
        i32.const 18524
        local.get 0
        call $~lib/@graphprotocol/graph-ts/common/value/Value#displayKind
        i32.store
        i32.const 18512
        i32.const 18508
        i32.load
        i32.const 2
        i32.shr_u
        i32.const 2544
        call $~lib/util/string/joinStringArray
        i32.const 8208
        i32.const 2111
        i32.const 7
        call $~lib/builtins/abort
        unreachable
      end
      i32.const 18560
      local.get 0
      call $~lib/@graphprotocol/graph-ts/common/value/Value#toString
      local.get 2
      call $~lib/@graphprotocol/graph-ts/index/store.set
    end)
  (func $start:tests/token-locker.test~anonymous|0~anonymous|3 (type 5)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 100
    call $tests/token-locker.test/NumContainer#constructor
    local.set 0
    i32.const 7088
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    local.set 2
    i32.const 24
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.get $handlers/tokenLocker.utils/AVG_SECONDS_MONTH
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigInt#times
    local.set 1
    global.get $tests/token-locker.test/MOCK_ADDRESS
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    i32.const 7200
    call $~lib/string/String#concat
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bytesToHex
    call $~lib/string/String#concat
    local.set 3
    local.get 0
    i32.load offset=4
    local.get 1
    local.get 2
    call $tests/token-locker.helpers/createDepositedEvent
    local.set 5
    local.get 0
    i32.load offset=4
    local.set 1
    call $~lib/matchstick-as/defaults/newMockEvent
    local.tee 0
    i32.load offset=16
    i32.const 2000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=28
    local.get 0
    i32.load offset=16
    i32.const 2000
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    i32.store offset=40
    local.get 0
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#constructor
    i32.store offset=24
    local.get 0
    i32.load offset=24
    local.set 6
    local.get 1
    i64.extend_i32_u
    local.set 7
    i32.const 16
    i32.const 19
    call $~lib/rt/stub/__new
    local.tee 1
    i32.const 4
    i32.store
    local.get 1
    local.get 7
    i64.store offset=8
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 4
    i32.const 7264
    i32.store
    local.get 4
    local.get 1
    i32.store offset=4
    local.get 6
    local.get 4
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 0
    i32.load offset=24
    local.set 1
    local.get 2
    call $~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.Value.fromAddress
    local.set 4
    i32.const 8
    i32.const 27
    call $~lib/rt/stub/__new
    local.tee 2
    i32.const 7344
    i32.store
    local.get 2
    local.get 4
    i32.store offset=4
    local.get 1
    local.get 2
    call $~lib/array/Array<~lib/@graphprotocol/graph-ts/chain/ethereum/ethereum.EventParam>#push
    local.get 5
    call $handlers/tokenLocker/handleDeposited
    i32.const 15136
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 13952
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    local.get 0
    call $handlers/tokenLocker/handleEjected
    i32.const 13952
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    i32.const 18560
    call $~lib/matchstick-as/assembly/store/countEntities
    call $~lib/matchstick-as/assembly/assert/assert.i32Equals
    local.get 3
    i32.const 14048
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 3
    i32.const 14000
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 3
    i32.const 7376
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 3
    i32.const 7296
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 3
    i32.const 14144
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals
    local.get 3
    i32.const 14096
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.bigIntToString
    call $~lib/matchstick-as/assembly/assert/assert.fieldEquals)
  (func $start:tests/token-locker.test~anonymous|0 (type 5)
    i32.const 6864
    i32.load
    i32.const 6896
    call $~lib/matchstick-as/assembly/index/_registerHook
    i32.const 6944
    i32.load
    i32.const 6976
    call $~lib/matchstick-as/assembly/index/_registerHook
    i32.const 7024
    i32.const 0
    i32.const 18176
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest
    i32.const 18208
    i32.const 0
    i32.const 18608
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerTest)
  (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type (type 0) (param i32) (result i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      block  ;; label = @42
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  block  ;; label = @48
                                                                                                    block  ;; label = @49
                                                                                                      block  ;; label = @50
                                                                                                        block  ;; label = @51
                                                                                                          block  ;; label = @52
                                                                                                            block  ;; label = @53
                                                                                                              block  ;; label = @54
                                                                                                                block  ;; label = @55
                                                                                                                  block  ;; label = @56
                                                                                                                    block  ;; label = @57
                                                                                                                      block  ;; label = @58
                                                                                                                        block  ;; label = @59
                                                                                                                          block  ;; label = @60
                                                                                                                            block  ;; label = @61
                                                                                                                              block  ;; label = @62
                                                                                                                                block  ;; label = @63
                                                                                                                                  block  ;; label = @64
                                                                                                                                    block  ;; label = @65
                                                                                                                                      block  ;; label = @66
                                                                                                                                        block  ;; label = @67
                                                                                                                                          block  ;; label = @68
                                                                                                                                            block  ;; label = @69
                                                                                                                                              block  ;; label = @70
                                                                                                                                                block  ;; label = @71
                                                                                                                                                  block  ;; label = @72
                                                                                                                                                    block  ;; label = @73
                                                                                                                                                      block  ;; label = @74
                                                                                                                                                        block  ;; label = @75
                                                                                                                                                          block  ;; label = @76
                                                                                                                                                            block  ;; label = @77
                                                                                                                                                              block  ;; label = @78
                                                                                                                                                                block  ;; label = @79
                                                                                                                                                                  block  ;; label = @80
                                                                                                                                                                    block  ;; label = @81
                                                                                                                                                                      block  ;; label = @82
                                                                                                                                                                        block  ;; label = @83
                                                                                                                                                                          block  ;; label = @84
                                                                                                                                                                            block  ;; label = @85
                                                                                                                                                                              block  ;; label = @86
                                                                                                                                                                                block  ;; label = @87
                                                                                                                                                                                  block  ;; label = @88
                                                                                                                                                                                    block  ;; label = @89
                                                                                                                                                                                      block  ;; label = @90
                                                                                                                                                                                        block  ;; label = @91
                                                                                                                                                                                          block  ;; label = @92
                                                                                                                                                                                            block  ;; label = @93
                                                                                                                                                                                              block  ;; label = @94
                                                                                                                                                                                                block  ;; label = @95
                                                                                                                                                                                                  block  ;; label = @96
                                                                                                                                                                                                    block  ;; label = @97
                                                                                                                                                                                                      block  ;; label = @98
                                                                                                                                                                                                        block  ;; label = @99
                                                                                                                                                                                                          block  ;; label = @100
                                                                                                                                                                                                            block  ;; label = @101
                                                                                                                                                                                                              block  ;; label = @102
                                                                                                                                                                                                                block  ;; label = @103
                                                                                                                                                                                                                  block  ;; label = @104
                                                                                                                                                                                                                    block  ;; label = @105
                                                                                                                                                                                                                      block  ;; label = @106
                                                                                                                                                                                                                        block  ;; label = @107
                                                                                                                                                                                                                          block  ;; label = @108
                                                                                                                                                                                                                            block  ;; label = @109
                                                                                                                                                                                                                              block  ;; label = @110
                                                                                                                                                                                                                                block  ;; label = @111
                                                                                                                                                                                                                                  block  ;; label = @112
                                                                                                                                                                                                                                    block  ;; label = @113
                                                                                                                                                                                                                                      block  ;; label = @114
                                                                                                                                                                                                                                        block  ;; label = @115
                                                                                                                                                                                                                                          block  ;; label = @116
                                                                                                                                                                                                                                            block  ;; label = @117
                                                                                                                                                                                                                                              block  ;; label = @118
                                                                                                                                                                                                                                                block  ;; label = @119
                                                                                                                                                                                                                                                  block  ;; label = @120
                                                                                                                                                                                                                                                    block  ;; label = @121
                                                                                                                                                                                                                                                      block  ;; label = @122
                                                                                                                                                                                                                                                        block  ;; label = @123
                                                                                                                                                                                                                                                          block  ;; label = @124
                                                                                                                                                                                                                                                            block  ;; label = @125
                                                                                                                                                                                                                                                              block  ;; label = @126
                                                                                                                                                                                                                                                                block  ;; label = @127
                                                                                                                                                                                                                                                                  block  ;; label = @128
                                                                                                                                                                                                                                                                    block  ;; label = @129
                                                                                                                                                                                                                                                                      block  ;; label = @130
                                                                                                                                                                                                                                                                        block  ;; label = @131
                                                                                                                                                                                                                                                                          block  ;; label = @132
                                                                                                                                                                                                                                                                            block  ;; label = @133
                                                                                                                                                                                                                                                                              block  ;; label = @134
                                                                                                                                                                                                                                                                                block  ;; label = @135
                                                                                                                                                                                                                                                                                  block  ;; label = @136
                                                                                                                                                                                                                                                                                    block  ;; label = @137
                                                                                                                                                                                                                                                                                      block  ;; label = @138
                                                                                                                                                                                                                                                                                        block  ;; label = @139
                                                                                                                                                                                                                                                                                          block  ;; label = @140
                                                                                                                                                                                                                                                                                            block  ;; label = @141
                                                                                                                                                                                                                                                                                              block  ;; label = @142
                                                                                                                                                                                                                                                                                                block  ;; label = @143
                                                                                                                                                                                                                                                                                                  block  ;; label = @144
                                                                                                                                                                                                                                                                                                    block  ;; label = @145
                                                                                                                                                                                                                                                                                                      block  ;; label = @146
                                                                                                                                                                                                                                                                                                        block  ;; label = @147
                                                                                                                                                                                                                                                                                                          block  ;; label = @148
                                                                                                                                                                                                                                                                                                            block  ;; label = @149
                                                                                                                                                                                                                                                                                                              block  ;; label = @150
                                                                                                                                                                                                                                                                                                                block  ;; label = @151
                                                                                                                                                                                                                                                                                                                  block  ;; label = @152
                                                                                                                                                                                                                                                                                                                    block  ;; label = @153
                                                                                                                                                                                                                                                                                                                      block  ;; label = @154
                                                                                                                                                                                                                                                                                                                        block  ;; label = @155
                                                                                                                                                                                                                                                                                                                          block  ;; label = @156
                                                                                                                                                                                                                                                                                                                            block  ;; label = @157
                                                                                                                                                                                                                                                                                                                              block  ;; label = @158
                                                                                                                                                                                                                                                                                                                                block  ;; label = @159
                                                                                                                                                                                                                                                                                                                                  block  ;; label = @160
                                                                                                                                                                                                                                                                                                                                    block  ;; label = @161
                                                                                                                                                                                                                                                                                                                                      local.get 0
                                                                                                                                                                                                                                                                                                                                      if  ;; label = @162
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 1 (;@161;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 2
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 2 (;@160;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 3
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 3 (;@159;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 4
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 4 (;@158;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 5
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 5 (;@157;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 6
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 6 (;@156;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 7
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 7 (;@155;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 8
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 8 (;@154;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 9
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 9 (;@153;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 10
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 10 (;@152;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 11
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 11 (;@151;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 12
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 12 (;@150;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 13
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 13 (;@149;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 14
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 14 (;@148;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 15
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 15 (;@147;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 16
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 16 (;@146;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 17
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 17 (;@145;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 18
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 18 (;@144;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 19
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 19 (;@143;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 20
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 20 (;@142;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 21
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 21 (;@141;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 27
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 22 (;@140;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 28
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 23 (;@139;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 29
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 24 (;@138;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 22
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 25 (;@137;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 23
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 26 (;@136;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 24
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 27 (;@135;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 25
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 28 (;@134;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 26
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 29 (;@133;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 30
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 30 (;@132;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 31
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 31 (;@131;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 32
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 32 (;@130;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 33
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 33 (;@129;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 34
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 34 (;@128;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 35
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 35 (;@127;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 36
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 36 (;@126;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 37
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 37 (;@125;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 38
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 38 (;@124;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 39
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 39 (;@123;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 40
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 40 (;@122;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 41
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 41 (;@121;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 42
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 42 (;@120;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 43
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 43 (;@119;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 44
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 44 (;@118;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 45
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 45 (;@117;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 46
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 46 (;@116;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 47
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 47 (;@115;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 48
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 48 (;@114;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 49
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 49 (;@113;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 50
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 50 (;@112;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 51
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 51 (;@111;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 52
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 52 (;@110;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 53
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 53 (;@109;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 54
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 54 (;@108;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 55
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 55 (;@107;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 56
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 56 (;@106;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 57
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 57 (;@105;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 58
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 58 (;@104;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 59
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 59 (;@103;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 60
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 60 (;@102;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 61
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 61 (;@101;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 63
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 62 (;@100;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 64
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 63 (;@99;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 65
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 64 (;@98;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 66
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 65 (;@97;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 67
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 66 (;@96;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 68
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 67 (;@95;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 69
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 68 (;@94;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 70
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 69 (;@93;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 71
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 70 (;@92;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 72
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 71 (;@91;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 73
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 72 (;@90;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 74
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 73 (;@89;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 75
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 74 (;@88;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 76
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 75 (;@87;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 77
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 76 (;@86;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 78
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 77 (;@85;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 79
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 78 (;@84;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 80
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 79 (;@83;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 81
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 80 (;@82;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 82
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 81 (;@81;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 83
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 82 (;@80;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 84
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 83 (;@79;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 85
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 84 (;@78;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 86
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 85 (;@77;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1000
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 86 (;@76;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1001
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 87 (;@75;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1002
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 88 (;@74;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1003
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 89 (;@73;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1500
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 90 (;@72;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1501
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 91 (;@71;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1502
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 92 (;@70;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1503
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 93 (;@69;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1504
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 94 (;@68;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1505
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 95 (;@67;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1506
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 96 (;@66;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1507
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 97 (;@65;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1508
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 98 (;@64;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1509
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 99 (;@63;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1510
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 100 (;@62;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1511
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 101 (;@61;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1512
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 102 (;@60;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1513
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 103 (;@59;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1514
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 104 (;@58;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1515
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 105 (;@57;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1516
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 106 (;@56;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1517
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 107 (;@55;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1518
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 108 (;@54;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1519
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 109 (;@53;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1520
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 110 (;@52;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1521
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 111 (;@51;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1522
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 112 (;@50;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1523
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 113 (;@49;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1524
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 114 (;@48;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1525
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 115 (;@47;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1526
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 116 (;@46;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1527
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 117 (;@45;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1528
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 118 (;@44;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1529
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 119 (;@43;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1530
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 120 (;@42;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1531
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 121 (;@41;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1532
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 122 (;@40;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1533
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 123 (;@39;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1534
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 124 (;@38;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1535
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 125 (;@37;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1536
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 126 (;@36;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1537
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 127 (;@35;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1538
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 128 (;@34;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1539
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 129 (;@33;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1540
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 130 (;@32;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1541
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 131 (;@31;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1542
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 132 (;@30;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1543
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 133 (;@29;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1544
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 134 (;@28;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1545
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 135 (;@27;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1546
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 136 (;@26;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1547
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 137 (;@25;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1548
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 138 (;@24;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1549
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 139 (;@23;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1550
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 140 (;@22;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1551
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 141 (;@21;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1552
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 142 (;@20;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1553
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 143 (;@19;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1554
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 144 (;@18;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1555
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 145 (;@17;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1556
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 146 (;@16;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1557
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 147 (;@15;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1558
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 148 (;@14;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1559
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 149 (;@13;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1560
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 150 (;@12;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1561
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 151 (;@11;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1562
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 152 (;@10;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 1563
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 153 (;@9;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 2500
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 154 (;@8;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 2501
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 155 (;@7;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 2502
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 156 (;@6;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 2503
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 157 (;@5;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 2504
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 158 (;@4;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 2505
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 159 (;@3;)
                                                                                                                                                                                                                                                                                                                                        local.get 0
                                                                                                                                                                                                                                                                                                                                        i32.const 2506
                                                                                                                                                                                                                                                                                                                                        i32.eq
                                                                                                                                                                                                                                                                                                                                        br_if 160 (;@2;)
                                                                                                                                                                                                                                                                                                                                        br 161 (;@1;)
                                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                                      i32.const 1
                                                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                                    i32.const 0
                                                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                                  i32.const 73
                                                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                                i32.const 74
                                                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                                              i32.const 75
                                                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                                            i32.const 76
                                                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                                          i32.const 13
                                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                                        i32.const 77
                                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                                      i32.const 78
                                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                                    i32.const 79
                                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                                  i32.const 80
                                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                                i32.const 81
                                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                                              i32.const 82
                                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                                            i32.const 84
                                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                                          i32.const 85
                                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                                        i32.const 87
                                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                                      i32.const 89
                                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                                    i32.const 91
                                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                                  i32.const 3
                                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                                i32.const 93
                                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                                              i32.const 95
                                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                                            i32.const 100
                                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                                          i32.const 101
                                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                                        i32.const 102
                                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                                      i32.const 103
                                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                                    i32.const 104
                                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                                  i32.const 92
                                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                                i32.const 108
                                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                                              i32.const 109
                                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                            i32.const 110
                                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                                          i32.const 86
                                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                        i32.const 88
                                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                                      i32.const 90
                                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                    i32.const 111
                                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                                  i32.const 96
                                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                                i32.const 116
                                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                                              i32.const 97
                                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                            i32.const 116
                                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                                          i32.const 117
                                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                        i32.const 120
                                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                                      i32.const 122
                                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                    i32.const 123
                                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                                  i32.const 124
                                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                i32.const 125
                                                                                                                                                                                                                                                return
                                                                                                                                                                                                                                              end
                                                                                                                                                                                                                                              i32.const 126
                                                                                                                                                                                                                                              return
                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                            i32.const 127
                                                                                                                                                                                                                                            return
                                                                                                                                                                                                                                          end
                                                                                                                                                                                                                                          i32.const 128
                                                                                                                                                                                                                                          return
                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                        i32.const 17
                                                                                                                                                                                                                                        return
                                                                                                                                                                                                                                      end
                                                                                                                                                                                                                                      i32.const 129
                                                                                                                                                                                                                                      return
                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                    i32.const 130
                                                                                                                                                                                                                                    return
                                                                                                                                                                                                                                  end
                                                                                                                                                                                                                                  i32.const 131
                                                                                                                                                                                                                                  return
                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                i32.const 132
                                                                                                                                                                                                                                return
                                                                                                                                                                                                                              end
                                                                                                                                                                                                                              i32.const 134
                                                                                                                                                                                                                              return
                                                                                                                                                                                                                            end
                                                                                                                                                                                                                            i32.const 114
                                                                                                                                                                                                                            return
                                                                                                                                                                                                                          end
                                                                                                                                                                                                                          i32.const 136
                                                                                                                                                                                                                          return
                                                                                                                                                                                                                        end
                                                                                                                                                                                                                        i32.const 137
                                                                                                                                                                                                                        return
                                                                                                                                                                                                                      end
                                                                                                                                                                                                                      i32.const 142
                                                                                                                                                                                                                      return
                                                                                                                                                                                                                    end
                                                                                                                                                                                                                    i32.const 144
                                                                                                                                                                                                                    return
                                                                                                                                                                                                                  end
                                                                                                                                                                                                                  i32.const 146
                                                                                                                                                                                                                  return
                                                                                                                                                                                                                end
                                                                                                                                                                                                                i32.const 148
                                                                                                                                                                                                                return
                                                                                                                                                                                                              end
                                                                                                                                                                                                              i32.const 149
                                                                                                                                                                                                              return
                                                                                                                                                                                                            end
                                                                                                                                                                                                            i32.const 135
                                                                                                                                                                                                            return
                                                                                                                                                                                                          end
                                                                                                                                                                                                          i32.const 141
                                                                                                                                                                                                          return
                                                                                                                                                                                                        end
                                                                                                                                                                                                        i32.const 145
                                                                                                                                                                                                        return
                                                                                                                                                                                                      end
                                                                                                                                                                                                      i32.const 150
                                                                                                                                                                                                      return
                                                                                                                                                                                                    end
                                                                                                                                                                                                    i32.const 151
                                                                                                                                                                                                    return
                                                                                                                                                                                                  end
                                                                                                                                                                                                  i32.const 149
                                                                                                                                                                                                  return
                                                                                                                                                                                                end
                                                                                                                                                                                                i32.const 133
                                                                                                                                                                                                return
                                                                                                                                                                                              end
                                                                                                                                                                                              i32.const 152
                                                                                                                                                                                              return
                                                                                                                                                                                            end
                                                                                                                                                                                            i32.const 153
                                                                                                                                                                                            return
                                                                                                                                                                                          end
                                                                                                                                                                                          i32.const 154
                                                                                                                                                                                          return
                                                                                                                                                                                        end
                                                                                                                                                                                        i32.const 155
                                                                                                                                                                                        return
                                                                                                                                                                                      end
                                                                                                                                                                                      i32.const 156
                                                                                                                                                                                      return
                                                                                                                                                                                    end
                                                                                                                                                                                    i32.const 157
                                                                                                                                                                                    return
                                                                                                                                                                                  end
                                                                                                                                                                                  i32.const 159
                                                                                                                                                                                  return
                                                                                                                                                                                end
                                                                                                                                                                                i32.const 160
                                                                                                                                                                                return
                                                                                                                                                                              end
                                                                                                                                                                              i32.const 161
                                                                                                                                                                              return
                                                                                                                                                                            end
                                                                                                                                                                            i32.const 162
                                                                                                                                                                            return
                                                                                                                                                                          end
                                                                                                                                                                          i32.const 138
                                                                                                                                                                          return
                                                                                                                                                                        end
                                                                                                                                                                        i32.const 163
                                                                                                                                                                        return
                                                                                                                                                                      end
                                                                                                                                                                      i32.const 143
                                                                                                                                                                      return
                                                                                                                                                                    end
                                                                                                                                                                    i32.const 164
                                                                                                                                                                    return
                                                                                                                                                                  end
                                                                                                                                                                  i32.const 140
                                                                                                                                                                  return
                                                                                                                                                                end
                                                                                                                                                                i32.const 147
                                                                                                                                                                return
                                                                                                                                                              end
                                                                                                                                                              i32.const 165
                                                                                                                                                              return
                                                                                                                                                            end
                                                                                                                                                            i32.const 166
                                                                                                                                                            return
                                                                                                                                                          end
                                                                                                                                                          i32.const 112
                                                                                                                                                          return
                                                                                                                                                        end
                                                                                                                                                        i32.const 113
                                                                                                                                                        return
                                                                                                                                                      end
                                                                                                                                                      i32.const 85
                                                                                                                                                      return
                                                                                                                                                    end
                                                                                                                                                    i32.const 115
                                                                                                                                                    return
                                                                                                                                                  end
                                                                                                                                                  i32.const 167
                                                                                                                                                  return
                                                                                                                                                end
                                                                                                                                                i32.const 168
                                                                                                                                                return
                                                                                                                                              end
                                                                                                                                              i32.const 114
                                                                                                                                              return
                                                                                                                                            end
                                                                                                                                            i32.const 170
                                                                                                                                            return
                                                                                                                                          end
                                                                                                                                          i32.const 173
                                                                                                                                          return
                                                                                                                                        end
                                                                                                                                        i32.const 177
                                                                                                                                        return
                                                                                                                                      end
                                                                                                                                      i32.const 176
                                                                                                                                      return
                                                                                                                                    end
                                                                                                                                    i32.const 193
                                                                                                                                    return
                                                                                                                                  end
                                                                                                                                  i32.const 198
                                                                                                                                  return
                                                                                                                                end
                                                                                                                                i32.const 200
                                                                                                                                return
                                                                                                                              end
                                                                                                                              i32.const 208
                                                                                                                              return
                                                                                                                            end
                                                                                                                            i32.const 192
                                                                                                                            return
                                                                                                                          end
                                                                                                                          i32.const 210
                                                                                                                          return
                                                                                                                        end
                                                                                                                        i32.const 204
                                                                                                                        return
                                                                                                                      end
                                                                                                                      i32.const 211
                                                                                                                      return
                                                                                                                    end
                                                                                                                    i32.const 181
                                                                                                                    return
                                                                                                                  end
                                                                                                                  i32.const 17
                                                                                                                  return
                                                                                                                end
                                                                                                                i32.const 216
                                                                                                                return
                                                                                                              end
                                                                                                              i32.const 169
                                                                                                              return
                                                                                                            end
                                                                                                            i32.const 188
                                                                                                            return
                                                                                                          end
                                                                                                          i32.const 171
                                                                                                          return
                                                                                                        end
                                                                                                        i32.const 197
                                                                                                        return
                                                                                                      end
                                                                                                      i32.const 187
                                                                                                      return
                                                                                                    end
                                                                                                    i32.const 215
                                                                                                    return
                                                                                                  end
                                                                                                  i32.const 179
                                                                                                  return
                                                                                                end
                                                                                                i32.const 218
                                                                                                return
                                                                                              end
                                                                                              i32.const 174
                                                                                              return
                                                                                            end
                                                                                            i32.const 175
                                                                                            return
                                                                                          end
                                                                                          i32.const 221
                                                                                          return
                                                                                        end
                                                                                        i32.const 180
                                                                                        return
                                                                                      end
                                                                                      i32.const 178
                                                                                      return
                                                                                    end
                                                                                    i32.const 212
                                                                                    return
                                                                                  end
                                                                                  i32.const 217
                                                                                  return
                                                                                end
                                                                                i32.const 205
                                                                                return
                                                                              end
                                                                              i32.const 186
                                                                              return
                                                                            end
                                                                            i32.const 222
                                                                            return
                                                                          end
                                                                          i32.const 184
                                                                          return
                                                                        end
                                                                        i32.const 183
                                                                        return
                                                                      end
                                                                      i32.const 194
                                                                      return
                                                                    end
                                                                    i32.const 196
                                                                    return
                                                                  end
                                                                  i32.const 195
                                                                  return
                                                                end
                                                                i32.const 182
                                                                return
                                                              end
                                                              i32.const 191
                                                              return
                                                            end
                                                            i32.const 213
                                                            return
                                                          end
                                                          i32.const 207
                                                          return
                                                        end
                                                        i32.const 214
                                                        return
                                                      end
                                                      i32.const 17
                                                      return
                                                    end
                                                    i32.const 185
                                                    return
                                                  end
                                                  i32.const 17
                                                  return
                                                end
                                                i32.const 199
                                                return
                                              end
                                              i32.const 172
                                              return
                                            end
                                            i32.const 206
                                            return
                                          end
                                          i32.const 224
                                          return
                                        end
                                        i32.const 202
                                        return
                                      end
                                      i32.const 203
                                      return
                                    end
                                    i32.const 201
                                    return
                                  end
                                  i32.const 190
                                  return
                                end
                                i32.const 219
                                return
                              end
                              i32.const 189
                              return
                            end
                            i32.const 225
                            return
                          end
                          i32.const 209
                          return
                        end
                        i32.const 220
                        return
                      end
                      i32.const 226
                      return
                    end
                    i32.const 223
                    return
                  end
                  i32.const 227
                  return
                end
                i32.const 230
                return
              end
              i32.const 228
              return
            end
            i32.const 229
            return
          end
          i32.const 231
          return
        end
        i32.const 232
        return
      end
      i32.const 233
      return
    end
    i32.const 0)
  (func $node_modules/@graphprotocol/graph-ts/global/global/allocate (type 0) (param i32) (result i32)
    local.get 0
    call $~lib/rt/stub/__alloc)
  (func $~start (type 5)
    (local i32 i32 i32)
    global.get $~started
    if  ;; label = @1
      return
    end
    i32.const 1
    global.set $~started
    i32.const 18764
    global.set $~lib/rt/stub/offset
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop
    i32.const 4
    i32.const 4
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    drop
    i32.const 1824
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    drop
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    drop
    i32.const 4
    i32.const 4
    call $~lib/rt/stub/__new
    call $~lib/@graphprotocol/graph-ts/common/collections/Entity#constructor
    drop
    i32.const 1824
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $~lib/matchstick-as/defaults/defaultAddress
    global.get $~lib/matchstick-as/defaults/defaultAddress
    global.set $~lib/matchstick-as/defaults/defaultAddressBytes
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/matchstick-as/defaults/defaultBigInt
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/matchstick-as/defaults/defaultIntBytes
    i32.const 0
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    i32.const 1
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray.fromI32
    global.set $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ONE
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    global.set $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGDECIMAL_ZERO
    global.get $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ONE
    call $~lib/@graphprotocol/graph-ts/common/numbers/BigDecimal#constructor
    drop
    i32.const 1568
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $~lib/@amxx/graphprotocol-utils/src/constants/constants.ADDRESS_ZERO
    i32.const 2348
    i32.load
    i32.const 1
    i32.shr_u
    i32.const 1
    i32.and
    if  ;; label = @1
      i32.const 2512
      i32.const 2352
      call $~lib/string/String#concat
      i32.const 2576
      call $~lib/string/String#concat
      i32.const 2640
      i32.const 75
      i32.const 5
      call $~lib/builtins/abort
      unreachable
    end
    i32.const 2348
    i32.load
    i32.const 1
    i32.shr_u
    i32.const 2
    i32.ge_u
    if (result i32)  ;; label = @1
      i32.const 2352
      i32.const 0
      call $~lib/string/String#charAt
      i32.const 2768
      call $~lib/string/String.__eq
    else
      i32.const 0
    end
    if (result i32)  ;; label = @1
      i32.const 2352
      i32.const 1
      call $~lib/string/String#charAt
      i32.const 2800
      call $~lib/string/String.__eq
    else
      i32.const 0
    end
    if (result i32)  ;; label = @1
      i32.const 2352
      i32.const 2
      i32.const 2147483647
      call $~lib/string/String#substr
    else
      i32.const 2352
    end
    local.tee 1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 2
    i32.shr_u
    local.set 2
    i32.const 12
    i32.const 11
    call $~lib/rt/stub/__new
    local.get 2
    call $~lib/@graphprotocol/graph-ts/common/collections/ByteArray#constructor
    local.set 2
    loop  ;; label = @1
      local.get 0
      local.get 1
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      i32.lt_s
      if  ;; label = @2
        local.get 2
        local.get 0
        i32.const 2
        i32.div_s
        local.get 1
        local.get 0
        i32.const 2
        call $~lib/string/String#substr
        call $~lib/util/string/strtol<i32>
        i32.extend8_s
        call $~lib/typedarray/Uint8Array#__set
        local.get 0
        i32.const 2
        i32.add
        local.set 0
        br 1 (;@1;)
      end
    end
    call $start:handlers/tokenLocker.utils
    i32.const 5264
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $tests/token-locker.test/MOCK_ADDRESS
    i32.const 5376
    call $~lib/@graphprotocol/graph-ts/common/conversion/typeConversion.stringToH160
    global.set $tests/token-locker.test/ARV_ADDRESS
    i32.const 5488
    i32.const 18640
    i32.load
    call $~lib/matchstick-as/assembly/index/_registerDescribe
    i32.const 0
    call $~lib/rt/stub/__alloc
    drop)
  (table $0 7 funcref)
  (memory (;0;) 1)
  (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultAddress (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultAddressBytes (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultBigInt (mut i32) (i32.const 0))
  (global $~lib/matchstick-as/defaults/defaultIntBytes (mut i32) (i32.const 0))
  (global $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ZERO (mut i32) (i32.const 0))
  (global $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGINT_ONE (mut i32) (i32.const 0))
  (global $~lib/@amxx/graphprotocol-utils/src/constants/constants.BIGDECIMAL_ZERO (mut i32) (i32.const 0))
  (global $~lib/@amxx/graphprotocol-utils/src/constants/constants.ADDRESS_ZERO (mut i32) (i32.const 0))
  (global $handlers/tokenLocker.utils/maxRatioArray (mut i32) (i32.const 0))
  (global $handlers/tokenLocker.utils/AVG_SECONDS_MONTH (mut i32) (i32.const 0))
  (global $handlers/tokenLocker.utils/MAX_LOCK_DURATION (mut i32) (i32.const 0))
  (global $handlers/tokenLocker.utils/ONE_ETHER (mut i32) (i32.const 0))
  (global $tests/token-locker.test/MOCK_ADDRESS (mut i32) (i32.const 0))
  (global $tests/token-locker.test/ARV_ADDRESS (mut i32) (i32.const 0))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.String i32 (i32.const 0))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBuffer i32 (i32.const 1))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int8Array i32 (i32.const 2))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int16Array i32 (i32.const 3))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int32Array i32 (i32.const 4))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Int64Array i32 (i32.const 5))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint8Array i32 (i32.const 6))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint16Array i32 (i32.const 7))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint32Array i32 (i32.const 8))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Uint64Array i32 (i32.const 9))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Float32Array i32 (i32.const 10))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Float64Array i32 (i32.const 11))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.BigDecimal i32 (i32.const 12))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBool i32 (i32.const 13))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayUint8Array i32 (i32.const 14))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayEthereumValue i32 (i32.const 15))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayStoreValue i32 (i32.const 16))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayJsonValue i32 (i32.const 17))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayString i32 (i32.const 18))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayEventParam i32 (i32.const 19))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayTypedMapEntryStringJsonValue i32 (i32.const 20))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayTypedMapEntryStringStoreValue i32 (i32.const 21))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.SmartContractCall i32 (i32.const 22))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EventParam i32 (i32.const 23))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumTransaction i32 (i32.const 24))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumBlock i32 (i32.const 25))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumCall i32 (i32.const 26))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedTypedMapStringJsonValue i32 (i32.const 27))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedBool i32 (i32.const 28))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.WrappedJsonValue i32 (i32.const 29))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumValue i32 (i32.const 30))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.StoreValue i32 (i32.const 31))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.JsonValue i32 (i32.const 32))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.EthereumEvent i32 (i32.const 33))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapEntryStringStoreValue i32 (i32.const 34))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapEntryStringJsonValue i32 (i32.const 35))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringStoreValue i32 (i32.const 36))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringJsonValue i32 (i32.const 37))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TypedMapStringTypedMapStringJsonValue i32 (i32.const 38))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ResultTypedMapStringJsonValueBool i32 (i32.const 39))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ResultJsonValueBool i32 (i32.const 40))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU8 i32 (i32.const 41))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU16 i32 (i32.const 42))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU32 i32 (i32.const 43))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayU64 i32 (i32.const 44))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI8 i32 (i32.const 45))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI16 i32 (i32.const 46))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI32 i32 (i32.const 47))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayI64 i32 (i32.const 48))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayF32 i32 (i32.const 49))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayF64 i32 (i32.const 50))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayBigDecimal i32 (i32.const 51))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayDataReceiver i32 (i32.const 52))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayCryptoHash i32 (i32.const 53))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayActionValue i32 (i32.const 54))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearMerklePath i32 (i32.const 55))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayValidatorStake i32 (i32.const 56))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArraySlashedValidator i32 (i32.const 57))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArraySignature i32 (i32.const 58))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearArrayChunkHeader i32 (i32.const 59))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAccessKeyPermissionValue i32 (i32.const 60))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearActionValue i32 (i32.const 61))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDirection i32 (i32.const 62))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearPublicKey i32 (i32.const 63))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSignature i32 (i32.const 64))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFunctionCallPermission i32 (i32.const 65))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFullAccessPermission i32 (i32.const 66))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAccessKey i32 (i32.const 67))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDataReceiver i32 (i32.const 68))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearCreateAccountAction i32 (i32.const 69))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeployContractAction i32 (i32.const 70))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearFunctionCallAction i32 (i32.const 71))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearTransferAction i32 (i32.const 72))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearStakeAction i32 (i32.const 73))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearAddKeyAction i32 (i32.const 74))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeleteKeyAction i32 (i32.const 75))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearDeleteAccountAction i32 (i32.const 76))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearActionReceipt i32 (i32.const 77))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSuccessStatus i32 (i32.const 78))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearMerklePathItem i32 (i32.const 79))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearExecutionOutcome i32 (i32.const 80))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearSlashedValidator i32 (i32.const 81))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearBlockHeader i32 (i32.const 82))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearValidatorStake i32 (i32.const 83))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearChunkHeader i32 (i32.const 84))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearBlock i32 (i32.const 85))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.NearReceiptWithOutcome i32 (i32.const 86))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.TransactionReceipt i32 (i32.const 1000))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.Log i32 (i32.const 1001))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayH256 i32 (i32.const 1002))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArrayLog i32 (i32.const 1003))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosAny i32 (i32.const 1500))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosAnyArray i32 (i32.const 1501))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBytesArray i32 (i32.const 1502))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCoinArray i32 (i32.const 1503))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCommitSigArray i32 (i32.const 1504))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventArray i32 (i32.const 1505))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventAttributeArray i32 (i32.const 1506))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidenceArray i32 (i32.const 1507))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfoArray i32 (i32.const 1508))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignerInfoArray i32 (i32.const 1509))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTxResultArray i32 (i32.const 1510))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorArray i32 (i32.const 1511))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorUpdateArray i32 (i32.const 1512))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosAuthInfo i32 (i32.const 1513))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlock i32 (i32.const 1514))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockId i32 (i32.const 1515))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockIdFlagEnum i32 (i32.const 1516))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosBlockParams i32 (i32.const 1517))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCoin i32 (i32.const 1518))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCommit i32 (i32.const 1519))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCommitSig i32 (i32.const 1520))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosCompactBitArray i32 (i32.const 1521))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosConsensus i32 (i32.const 1522))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosConsensusParams i32 (i32.const 1523))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosDuplicateVoteEvidence i32 (i32.const 1524))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosDuration i32 (i32.const 1525))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvent i32 (i32.const 1526))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventAttribute i32 (i32.const 1527))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventData i32 (i32.const 1528))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEventVote i32 (i32.const 1529))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidence i32 (i32.const 1530))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidenceList i32 (i32.const 1531))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosEvidenceParams i32 (i32.const 1532))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosFee i32 (i32.const 1533))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosHeader i32 (i32.const 1534))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosHeaderOnlyBlock i32 (i32.const 1535))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosLightBlock i32 (i32.const 1536))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosLightClientAttackEvidence i32 (i32.const 1537))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfo i32 (i32.const 1538))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfoMulti i32 (i32.const 1539))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosModeInfoSingle i32 (i32.const 1540))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosPartSetHeader i32 (i32.const 1541))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosPublicKey i32 (i32.const 1542))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseBeginBlock i32 (i32.const 1543))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseDeliverTx i32 (i32.const 1544))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosResponseEndBlock i32 (i32.const 1545))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignModeEnum i32 (i32.const 1546))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignedHeader i32 (i32.const 1547))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignedMsgTypeEnum i32 (i32.const 1548))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosSignerInfo i32 (i32.const 1549))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTimestamp i32 (i32.const 1550))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTip i32 (i32.const 1551))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTransactionData i32 (i32.const 1552))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTx i32 (i32.const 1553))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTxBody i32 (i32.const 1554))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTxResult i32 (i32.const 1555))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidator i32 (i32.const 1556))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorParams i32 (i32.const 1557))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorSet i32 (i32.const 1558))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorSetUpdates i32 (i32.const 1559))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosValidatorUpdate i32 (i32.const 1560))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosVersionParams i32 (i32.const 1561))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosMessageData i32 (i32.const 1562))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.CosmosTransactionContext i32 (i32.const 1563))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveBlock i32 (i32.const 2500))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveProofOfAccess i32 (i32.const 2501))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTag i32 (i32.const 2502))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTagArray i32 (i32.const 2503))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransaction i32 (i32.const 2504))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransactionArray i32 (i32.const 2505))
  (global $node_modules/@graphprotocol/graph-ts/global/global/TypeId.ArweaveTransactionWithBlockPtr i32 (i32.const 2506))
  (global $~started (mut i32) (i32.const 0))
  (export "TypeId.String" (global 15))
  (export "TypeId.ArrayBuffer" (global 16))
  (export "TypeId.Int8Array" (global 17))
  (export "TypeId.Int16Array" (global 18))
  (export "TypeId.Int32Array" (global 19))
  (export "TypeId.Int64Array" (global 20))
  (export "TypeId.Uint8Array" (global 21))
  (export "TypeId.Uint16Array" (global 22))
  (export "TypeId.Uint32Array" (global 23))
  (export "TypeId.Uint64Array" (global 24))
  (export "TypeId.Float32Array" (global 25))
  (export "TypeId.Float64Array" (global 26))
  (export "TypeId.BigDecimal" (global 27))
  (export "TypeId.ArrayBool" (global 28))
  (export "TypeId.ArrayUint8Array" (global 29))
  (export "TypeId.ArrayEthereumValue" (global 30))
  (export "TypeId.ArrayStoreValue" (global 31))
  (export "TypeId.ArrayJsonValue" (global 32))
  (export "TypeId.ArrayString" (global 33))
  (export "TypeId.ArrayEventParam" (global 34))
  (export "TypeId.ArrayTypedMapEntryStringJsonValue" (global 35))
  (export "TypeId.ArrayTypedMapEntryStringStoreValue" (global 36))
  (export "TypeId.SmartContractCall" (global 37))
  (export "TypeId.EventParam" (global 38))
  (export "TypeId.EthereumTransaction" (global 39))
  (export "TypeId.EthereumBlock" (global 40))
  (export "TypeId.EthereumCall" (global 41))
  (export "TypeId.WrappedTypedMapStringJsonValue" (global 42))
  (export "TypeId.WrappedBool" (global 43))
  (export "TypeId.WrappedJsonValue" (global 44))
  (export "TypeId.EthereumValue" (global 45))
  (export "TypeId.StoreValue" (global 46))
  (export "TypeId.JsonValue" (global 47))
  (export "TypeId.EthereumEvent" (global 48))
  (export "TypeId.TypedMapEntryStringStoreValue" (global 49))
  (export "TypeId.TypedMapEntryStringJsonValue" (global 50))
  (export "TypeId.TypedMapStringStoreValue" (global 51))
  (export "TypeId.TypedMapStringJsonValue" (global 52))
  (export "TypeId.TypedMapStringTypedMapStringJsonValue" (global 53))
  (export "TypeId.ResultTypedMapStringJsonValueBool" (global 54))
  (export "TypeId.ResultJsonValueBool" (global 55))
  (export "TypeId.ArrayU8" (global 56))
  (export "TypeId.ArrayU16" (global 57))
  (export "TypeId.ArrayU32" (global 58))
  (export "TypeId.ArrayU64" (global 59))
  (export "TypeId.ArrayI8" (global 60))
  (export "TypeId.ArrayI16" (global 61))
  (export "TypeId.ArrayI32" (global 62))
  (export "TypeId.ArrayI64" (global 63))
  (export "TypeId.ArrayF32" (global 64))
  (export "TypeId.ArrayF64" (global 65))
  (export "TypeId.ArrayBigDecimal" (global 66))
  (export "TypeId.NearArrayDataReceiver" (global 67))
  (export "TypeId.NearArrayCryptoHash" (global 68))
  (export "TypeId.NearArrayActionValue" (global 69))
  (export "TypeId.NearMerklePath" (global 70))
  (export "TypeId.NearArrayValidatorStake" (global 71))
  (export "TypeId.NearArraySlashedValidator" (global 72))
  (export "TypeId.NearArraySignature" (global 73))
  (export "TypeId.NearArrayChunkHeader" (global 74))
  (export "TypeId.NearAccessKeyPermissionValue" (global 75))
  (export "TypeId.NearActionValue" (global 76))
  (export "TypeId.NearDirection" (global 77))
  (export "TypeId.NearPublicKey" (global 78))
  (export "TypeId.NearSignature" (global 79))
  (export "TypeId.NearFunctionCallPermission" (global 80))
  (export "TypeId.NearFullAccessPermission" (global 81))
  (export "TypeId.NearAccessKey" (global 82))
  (export "TypeId.NearDataReceiver" (global 83))
  (export "TypeId.NearCreateAccountAction" (global 84))
  (export "TypeId.NearDeployContractAction" (global 85))
  (export "TypeId.NearFunctionCallAction" (global 86))
  (export "TypeId.NearTransferAction" (global 87))
  (export "TypeId.NearStakeAction" (global 88))
  (export "TypeId.NearAddKeyAction" (global 89))
  (export "TypeId.NearDeleteKeyAction" (global 90))
  (export "TypeId.NearDeleteAccountAction" (global 91))
  (export "TypeId.NearActionReceipt" (global 92))
  (export "TypeId.NearSuccessStatus" (global 93))
  (export "TypeId.NearMerklePathItem" (global 94))
  (export "TypeId.NearExecutionOutcome" (global 95))
  (export "TypeId.NearSlashedValidator" (global 96))
  (export "TypeId.NearBlockHeader" (global 97))
  (export "TypeId.NearValidatorStake" (global 98))
  (export "TypeId.NearChunkHeader" (global 99))
  (export "TypeId.NearBlock" (global 100))
  (export "TypeId.NearReceiptWithOutcome" (global 101))
  (export "TypeId.TransactionReceipt" (global 102))
  (export "TypeId.Log" (global 103))
  (export "TypeId.ArrayH256" (global 104))
  (export "TypeId.ArrayLog" (global 105))
  (export "TypeId.CosmosAny" (global 106))
  (export "TypeId.CosmosAnyArray" (global 107))
  (export "TypeId.CosmosBytesArray" (global 108))
  (export "TypeId.CosmosCoinArray" (global 109))
  (export "TypeId.CosmosCommitSigArray" (global 110))
  (export "TypeId.CosmosEventArray" (global 111))
  (export "TypeId.CosmosEventAttributeArray" (global 112))
  (export "TypeId.CosmosEvidenceArray" (global 113))
  (export "TypeId.CosmosModeInfoArray" (global 114))
  (export "TypeId.CosmosSignerInfoArray" (global 115))
  (export "TypeId.CosmosTxResultArray" (global 116))
  (export "TypeId.CosmosValidatorArray" (global 117))
  (export "TypeId.CosmosValidatorUpdateArray" (global 118))
  (export "TypeId.CosmosAuthInfo" (global 119))
  (export "TypeId.CosmosBlock" (global 120))
  (export "TypeId.CosmosBlockId" (global 121))
  (export "TypeId.CosmosBlockIdFlagEnum" (global 122))
  (export "TypeId.CosmosBlockParams" (global 123))
  (export "TypeId.CosmosCoin" (global 124))
  (export "TypeId.CosmosCommit" (global 125))
  (export "TypeId.CosmosCommitSig" (global 126))
  (export "TypeId.CosmosCompactBitArray" (global 127))
  (export "TypeId.CosmosConsensus" (global 128))
  (export "TypeId.CosmosConsensusParams" (global 129))
  (export "TypeId.CosmosDuplicateVoteEvidence" (global 130))
  (export "TypeId.CosmosDuration" (global 131))
  (export "TypeId.CosmosEvent" (global 132))
  (export "TypeId.CosmosEventAttribute" (global 133))
  (export "TypeId.CosmosEventData" (global 134))
  (export "TypeId.CosmosEventVote" (global 135))
  (export "TypeId.CosmosEvidence" (global 136))
  (export "TypeId.CosmosEvidenceList" (global 137))
  (export "TypeId.CosmosEvidenceParams" (global 138))
  (export "TypeId.CosmosFee" (global 139))
  (export "TypeId.CosmosHeader" (global 140))
  (export "TypeId.CosmosHeaderOnlyBlock" (global 141))
  (export "TypeId.CosmosLightBlock" (global 142))
  (export "TypeId.CosmosLightClientAttackEvidence" (global 143))
  (export "TypeId.CosmosModeInfo" (global 144))
  (export "TypeId.CosmosModeInfoMulti" (global 145))
  (export "TypeId.CosmosModeInfoSingle" (global 146))
  (export "TypeId.CosmosPartSetHeader" (global 147))
  (export "TypeId.CosmosPublicKey" (global 148))
  (export "TypeId.CosmosResponseBeginBlock" (global 149))
  (export "TypeId.CosmosResponseDeliverTx" (global 150))
  (export "TypeId.CosmosResponseEndBlock" (global 151))
  (export "TypeId.CosmosSignModeEnum" (global 152))
  (export "TypeId.CosmosSignedHeader" (global 153))
  (export "TypeId.CosmosSignedMsgTypeEnum" (global 154))
  (export "TypeId.CosmosSignerInfo" (global 155))
  (export "TypeId.CosmosTimestamp" (global 156))
  (export "TypeId.CosmosTip" (global 157))
  (export "TypeId.CosmosTransactionData" (global 158))
  (export "TypeId.CosmosTx" (global 159))
  (export "TypeId.CosmosTxBody" (global 160))
  (export "TypeId.CosmosTxResult" (global 161))
  (export "TypeId.CosmosValidator" (global 162))
  (export "TypeId.CosmosValidatorParams" (global 163))
  (export "TypeId.CosmosValidatorSet" (global 164))
  (export "TypeId.CosmosValidatorSetUpdates" (global 165))
  (export "TypeId.CosmosValidatorUpdate" (global 166))
  (export "TypeId.CosmosVersionParams" (global 167))
  (export "TypeId.CosmosMessageData" (global 168))
  (export "TypeId.CosmosTransactionContext" (global 169))
  (export "TypeId.ArweaveBlock" (global 170))
  (export "TypeId.ArweaveProofOfAccess" (global 171))
  (export "TypeId.ArweaveTag" (global 172))
  (export "TypeId.ArweaveTagArray" (global 173))
  (export "TypeId.ArweaveTransaction" (global 174))
  (export "TypeId.ArweaveTransactionArray" (global 175))
  (export "TypeId.ArweaveTransactionWithBlockPtr" (global 176))
  (export "id_of_type" (func $node_modules/@graphprotocol/graph-ts/global/global/id_of_type))
  (export "allocate" (func $node_modules/@graphprotocol/graph-ts/global/global/allocate))
  (export "memory" (memory 0))
  (export "table" (table 0))
  (export "_start" (func $~start))
  (elem $0 (i32.const 1) func $start:tests/token-locker.test~anonymous|0~anonymous|0 $start:tests/token-locker.test~anonymous|0~anonymous|1 $~lib/@graphprotocol/graph-ts/common/value/Value#displayData~anonymous|0 $start:tests/token-locker.test~anonymous|0~anonymous|2 $start:tests/token-locker.test~anonymous|0~anonymous|3 $start:tests/token-locker.test~anonymous|0)
  (data (;0;) (i32.const 1036) "<")
  (data (;1;) (i32.const 1048) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
  (data (;2;) (i32.const 1100) "<")
  (data (;3;) (i32.const 1112) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00s\00t\00u\00b\00.\00t\00s")
  (data (;4;) (i32.const 1164) "\1c")
  (data (;5;) (i32.const 1176) "\01\00\00\00\0c\00\00\00S\00t\00r\00i\00n\00g")
  (data (;6;) (i32.const 1196) "\1c")
  (data (;7;) (i32.const 1208) "\01\00\00\00\06\00\00\00I\00n\00t")
  (data (;8;) (i32.const 1228) ",")
  (data (;9;) (i32.const 1240) "\01\00\00\00\14\00\00\00B\00i\00g\00D\00e\00c\00i\00m\00a\00l")
  (data (;10;) (i32.const 1276) "\1c")
  (data (;11;) (i32.const 1288) "\01\00\00\00\08\00\00\00b\00o\00o\00l")
  (data (;12;) (i32.const 1308) "\1c")
  (data (;13;) (i32.const 1320) "\01\00\00\00\0a\00\00\00A\00r\00r\00a\00y")
  (data (;14;) (i32.const 1340) "\1c")
  (data (;15;) (i32.const 1352) "\01\00\00\00\08\00\00\00n\00u\00l\00l")
  (data (;16;) (i32.const 1372) "\1c")
  (data (;17;) (i32.const 1384) "\01\00\00\00\0a\00\00\00B\00y\00t\00e\00s")
  (data (;18;) (i32.const 1404) "\1c")
  (data (;19;) (i32.const 1416) "\01\00\00\00\0c\00\00\00B\00i\00g\00I\00n\00t")
  (data (;20;) (i32.const 1436) "<")
  (data (;21;) (i32.const 1452) " \00\00\00\a0\04\00\00\c0\04\00\00\e0\04\00\00\10\05\00\000\05\00\00P\05\00\00p\05\00\00\90\05")
  (data (;22;) (i32.const 1500) ",")
  (data (;23;) (i32.const 1512) "\03\00\00\00\10\00\00\00\b0\05\00\00\b0\05\00\00 \00\00\00\08")
  (data (;24;) (i32.const 1548) "l")
  (data (;25;) (i32.const 1560) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;26;) (i32.const 1660) ",")
  (data (;27;) (i32.const 1672) "\01\00\00\00\0e\00\00\00m\00a\00i\00n\00n\00e\00t")
  (data (;28;) (i32.const 1708) ",")
  (data (;29;) (i32.const 1720) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
  (data (;30;) (i32.const 1756) ",")
  (data (;31;) (i32.const 1768) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
  (data (;32;) (i32.const 1804) "l")
  (data (;33;) (i32.const 1816) "\01\00\00\00T\00\00\000\00x\00A\001\006\000\008\001\00F\003\006\000\00e\003\008\004\007\000\000\006\00d\00B\006\006\000\00b\00a\00e\001\00c\006\00d\001\00b\002\00e\001\007\00e\00C\002\00A")
  (data (;34;) (i32.const 1916) "<")
  (data (;35;) (i32.const 1928) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
  (data (;36;) (i32.const 1980) "<")
  (data (;37;) (i32.const 1992) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
  (data (;38;) (i32.const 2044) "<")
  (data (;39;) (i32.const 2056) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
  (data (;40;) (i32.const 2108) "<")
  (data (;41;) (i32.const 2120) "\01\00\00\00 \00\00\00d\00e\00f\00a\00u\00l\00t\00_\00l\00o\00g\00_\00t\00y\00p\00e")
  (data (;42;) (i32.const 2172) "\9c")
  (data (;43;) (i32.const 2184) "\01\00\00\00\86\00\00\00Y\00o\00u\00 \00c\00a\00n\00'\00t\00 \00m\00o\00d\00i\00f\00y\00 \00a\00 \00M\00o\00c\00k\00e\00d\00F\00u\00n\00c\00t\00i\00o\00n\00 \00i\00n\00s\00t\00a\00n\00c\00e\00 \00a\00f\00t\00e\00r\00 \00i\00t\00 \00h\00a\00s\00 \00b\00e\00e\00n\00 \00s\00a\00v\00e\00d\00.")
  (data (;44;) (i32.const 2332) "\9c")
  (data (;45;) (i32.const 2344) "\01\00\00\00\84\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;46;) (i32.const 2492) "\1c")
  (data (;47;) (i32.const 2504) "\01\00\00\00\0c\00\00\00i\00n\00p\00u\00t\00 ")
  (data (;48;) (i32.const 2524) "\1c")
  (data (;49;) (i32.const 2536) "\01")
  (data (;50;) (i32.const 2556) "<")
  (data (;51;) (i32.const 2568) "\01\00\00\00\1e\00\00\00 \00h\00a\00s\00 \00o\00d\00d\00 \00l\00e\00n\00g\00t\00h")
  (data (;52;) (i32.const 2620) "|")
  (data (;53;) (i32.const 2632) "\01\00\00\00d\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00c\00o\00l\00l\00e\00c\00t\00i\00o\00n\00s\00.\00t\00s")
  (data (;54;) (i32.const 2748) "\1c")
  (data (;55;) (i32.const 2760) "\01\00\00\00\02\00\00\000")
  (data (;56;) (i32.const 2780) "\1c")
  (data (;57;) (i32.const 2792) "\01\00\00\00\02\00\00\00x")
  (data (;58;) (i32.const 2812) "\1c")
  (data (;59;) (i32.const 2824) "\01\00\00\00\02\00\00\001")
  (data (;60;) (i32.const 2844) "\1c")
  (data (;61;) (i32.const 2856) "\01\00\00\00\02\00\00\002")
  (data (;62;) (i32.const 2876) "\1c")
  (data (;63;) (i32.const 2888) "\01\00\00\00\02\00\00\003")
  (data (;64;) (i32.const 2908) "\1c")
  (data (;65;) (i32.const 2920) "\01\00\00\00\02\00\00\004")
  (data (;66;) (i32.const 2940) "\1c")
  (data (;67;) (i32.const 2952) "\01\00\00\00\02\00\00\005")
  (data (;68;) (i32.const 2972) "\1c")
  (data (;69;) (i32.const 2984) "\01\00\00\00\02\00\00\006")
  (data (;70;) (i32.const 3004) "<")
  (data (;71;) (i32.const 3016) "\01\00\00\00\22\00\00\008\003\003\003\003\003\003\003\003\003\003\003\000\000\000\000\000")
  (data (;72;) (i32.const 3068) "<")
  (data (;73;) (i32.const 3080) "\01\00\00\00$\00\00\001\000\005\005\008\006\005\005\004\005\004\008\008\000\000\000\000\000")
  (data (;74;) (i32.const 3132) "<")
  (data (;75;) (i32.const 3144) "\01\00\00\00$\00\00\001\002\008\009\005\000\009\003\005\007\004\004\008\000\000\000\000\000")
  (data (;76;) (i32.const 3196) "<")
  (data (;77;) (i32.const 3208) "\01\00\00\00$\00\00\001\005\003\002\008\006\007\009\008\001\009\001\004\000\000\000\000\000")
  (data (;78;) (i32.const 3260) "<")
  (data (;79;) (i32.const 3272) "\01\00\00\00$\00\00\001\007\008\004\008\005\007\002\003\004\006\003\007\000\000\000\000\000")
  (data (;80;) (i32.const 3324) "<")
  (data (;81;) (i32.const 3336) "\01\00\00\00$\00\00\002\000\004\004\006\001\000\009\009\005\000\002\003\000\000\000\000\000")
  (data (;82;) (i32.const 3388) "<")
  (data (;83;) (i32.const 3400) "\01\00\00\00$\00\00\002\003\001\001\004\002\001\003\004\005\003\009\001\000\000\000\000\000")
  (data (;84;) (i32.const 3452) "<")
  (data (;85;) (i32.const 3464) "\01\00\00\00$\00\00\002\005\008\004\006\009\008\008\000\006\007\004\003\000\000\000\000\000")
  (data (;86;) (i32.const 3516) "<")
  (data (;87;) (i32.const 3528) "\01\00\00\00$\00\00\002\008\006\003\009\004\004\008\008\002\008\002\000\000\000\000\000\000")
  (data (;88;) (i32.const 3580) "<")
  (data (;89;) (i32.const 3592) "\01\00\00\00$\00\00\003\001\004\008\007\003\002\004\008\008\004\007\008\000\000\000\000\000")
  (data (;90;) (i32.const 3644) "<")
  (data (;91;) (i32.const 3656) "\01\00\00\00$\00\00\003\004\003\008\006\009\001\006\001\009\008\006\003\000\000\000\000\000")
  (data (;92;) (i32.const 3708) "<")
  (data (;93;) (i32.const 3720) "\01\00\00\00$\00\00\003\007\003\003\004\009\008\006\002\000\005\009\004\000\000\000\000\000")
  (data (;94;) (i32.const 3772) "<")
  (data (;95;) (i32.const 3784) "\01\00\00\00$\00\00\004\000\003\002\008\006\007\009\008\001\009\001\004\000\000\000\000\000")
  (data (;96;) (i32.const 3836) "<")
  (data (;97;) (i32.const 3848) "\01\00\00\00$\00\00\004\003\003\006\005\004\005\009\007\000\003\005\009\000\000\000\000\000")
  (data (;98;) (i32.const 3900) "<")
  (data (;99;) (i32.const 3912) "\01\00\00\00$\00\00\004\006\004\004\003\000\005\006\000\000\004\008\001\000\000\000\000\000")
  (data (;100;) (i32.const 3964) "<")
  (data (;101;) (i32.const 3976) "\01\00\00\00$\00\00\004\009\005\005\009\004\002\006\001\005\003\006\003\000\000\000\000\000")
  (data (;102;) (i32.const 4028) "<")
  (data (;103;) (i32.const 4040) "\01\00\00\00$\00\00\005\002\007\001\002\007\002\002\003\004\003\007\003\000\000\000\000\000")
  (data (;104;) (i32.const 4092) "<")
  (data (;105;) (i32.const 4104) "\01\00\00\00$\00\00\005\005\009\000\001\002\006\004\009\003\003\006\001\000\000\000\000\000")
  (data (;106;) (i32.const 4156) "<")
  (data (;107;) (i32.const 4168) "\01\00\00\00$\00\00\005\009\001\002\003\005\002\000\004\008\002\003\000\000\000\000\000\000")
  (data (;108;) (i32.const 4220) "<")
  (data (;109;) (i32.const 4232) "\01\00\00\00$\00\00\006\002\003\007\008\000\008\003\004\005\001\006\006\000\000\000\000\000")
  (data (;110;) (i32.const 4284) "<")
  (data (;111;) (i32.const 4296) "\01\00\00\00$\00\00\006\005\006\006\003\006\006\000\008\004\000\005\004\000\000\000\000\000")
  (data (;112;) (i32.const 4348) "<")
  (data (;113;) (i32.const 4360) "\01\00\00\00$\00\00\006\008\009\007\009\000\005\009\001\008\006\001\001\000\000\000\000\000")
  (data (;114;) (i32.const 4412) "<")
  (data (;115;) (i32.const 4424) "\01\00\00\00$\00\00\007\002\003\002\003\001\007\003\004\009\003\003\001\000\000\000\000\000")
  (data (;116;) (i32.const 4476) "<")
  (data (;117;) (i32.const 4488) "\01\00\00\00$\00\00\007\005\006\009\004\009\007\007\007\004\007\005\008\000\000\000\000\000")
  (data (;118;) (i32.const 4540) "<")
  (data (;119;) (i32.const 4552) "\01\00\00\00$\00\00\007\009\000\009\003\005\001\006\007\003\007\006\006\000\000\000\000\000")
  (data (;120;) (i32.const 4604) "<")
  (data (;121;) (i32.const 4616) "\01\00\00\00$\00\00\008\002\005\001\007\008\009\008\009\006\009\007\001\000\000\000\000\000")
  (data (;122;) (i32.const 4668) "<")
  (data (;123;) (i32.const 4680) "\01\00\00\00$\00\00\008\005\009\006\007\002\009\000\004\009\006\005\006\000\000\000\000\000")
  (data (;124;) (i32.const 4732) "<")
  (data (;125;) (i32.const 4744) "\01\00\00\00$\00\00\008\009\004\004\000\009\000\009\005\001\009\001\000\000\000\000\000\000")
  (data (;126;) (i32.const 4796) "<")
  (data (;127;) (i32.const 4808) "\01\00\00\00$\00\00\009\002\009\003\008\000\002\001\006\004\002\004\000\000\000\000\000\000")
  (data (;128;) (i32.const 4860) "<")
  (data (;129;) (i32.const 4872) "\01\00\00\00$\00\00\009\006\004\005\007\009\003\005\006\009\000\005\005\000\000\000\000\000")
  (data (;130;) (i32.const 4924) "<")
  (data (;131;) (i32.const 4936) "\01\00\00\00&\00\00\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;132;) (i32.const 4988) "\8c")
  (data (;133;) (i32.const 5000) "\01\00\00\00v\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00m\00u\00l\00t\00i\00p\00l\00y\00 \00B\00i\00g\00I\00n\00t\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;134;) (i32.const 5132) "l")
  (data (;135;) (i32.const 5144) "\01\00\00\00\5c\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00n\00u\00m\00b\00e\00r\00s\00.\00t\00s")
  (data (;136;) (i32.const 5244) "l")
  (data (;137;) (i32.const 5256) "\01\00\00\00T\00\00\000\00x\00a\001\006\000\008\001\00f\003\006\000\00e\003\008\004\007\000\000\006\00d\00b\006\006\000\00b\00a\00e\001\00c\006\00d\001\00b\002\00e\001\007\00e\00c\002\00a")
  (data (;138;) (i32.const 5356) "l")
  (data (;139;) (i32.const 5368) "\01\00\00\00T\00\00\000\00x\000\006\009\00c\000\00E\00d\001\002\00d\00B\007\001\009\009\00c\001\00D\00d\00A\00F\007\003\00b\009\004\00d\00e\007\005\00A\00A\00e\008\000\006\001\00d\003\003")
  (data (;140;) (i32.const 5468) "|")
  (data (;141;) (i32.const 5480) "\01\00\00\00`\00\00\00L\00o\00c\00k\00s\00 \00C\00o\00r\00r\00e\00c\00t\00l\00y\00 \00U\00p\00d\00a\00t\00e\00 \00i\00n\00 \00t\00h\00e\00 \00t\00o\00k\00e\00n\00L\00o\00c\00k\00e\00r\00 \00E\00v\00e\00n\00t\00s")
  (data (;142;) (i32.const 5596) ",")
  (data (;143;) (i32.const 5608) "\01\00\00\00\0e\00\00\00v\00e\00T\00o\00k\00e\00n")
  (data (;144;) (i32.const 5644) "<")
  (data (;145;) (i32.const 5656) "\01\00\00\00&\00\00\00v\00e\00T\00o\00k\00e\00n\00(\00)\00:\00(\00a\00d\00d\00r\00e\00s\00s\00)")
  (data (;146;) (i32.const 5708) "\1c")
  (data (;147;) (i32.const 5740) "\1c")
  (data (;148;) (i32.const 5772) "\1c")
  (data (;149;) (i32.const 5804) "\5c")
  (data (;150;) (i32.const 5816) "\01\00\00\00J\00\00\00T\00o\00o\00 \00f\00e\00w\00 \00a\00r\00g\00u\00m\00e\00n\00t\00s\00 \00f\00o\00r\00 \00f\00o\00r\00m\00a\00t\00 \00s\00t\00r\00i\00n\00g\00:\00 ")
  (data (;151;) (i32.const 5900) "L")
  (data (;152;) (i32.const 5912) "\01\00\00\002\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00c\00h\00s\00t\00i\00c\00k\00-\00a\00s\00/\00l\00o\00g\00.\00t\00s")
  (data (;153;) (i32.const 5980) "|")
  (data (;154;) (i32.const 5992) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
  (data (;155;) (i32.const 6108) "\5c")
  (data (;156;) (i32.const 6120) "\01\00\00\00J\00\00\00A\00d\00d\00r\00e\00s\00s\00 \00m\00u\00s\00t\00 \00c\00o\00n\00t\00a\00i\00n\00 \00e\00x\00a\00c\00t\00l\00y\00 \002\000\00 \00b\00y\00t\00e\00s")
  (data (;157;) (i32.const 6204) "l")
  (data (;158;) (i32.const 6216) "\01\00\00\00\5c\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00h\00a\00i\00n\00/\00e\00t\00h\00e\00r\00e\00u\00m\00.\00t\00s")
  (data (;159;) (i32.const 6316) "\1c")
  (data (;160;) (i32.const 6348) "\1c")
  (data (;161;) (i32.const 6360) "\01\00\00\00\08\00\00\00n\00a\00m\00e")
  (data (;162;) (i32.const 6380) "<")
  (data (;163;) (i32.const 6392) "\01\00\00\00\1e\00\00\00n\00a\00m\00e\00(\00)\00:\00(\00s\00t\00r\00i\00n\00g\00)")
  (data (;164;) (i32.const 6444) "\1c")
  (data (;165;) (i32.const 6476) "<")
  (data (;166;) (i32.const 6488) "\01\00\00\00(\00\00\00A\00c\00t\00i\00v\00e\00 \00R\00e\00w\00a\00r\00d\00s\00 \00V\00a\00u\00l\00t")
  (data (;167;) (i32.const 6540) "\1c")
  (data (;168;) (i32.const 6552) "\01\00\00\00\0c\00\00\00s\00y\00m\00b\00o\00l")
  (data (;169;) (i32.const 6572) "<")
  (data (;170;) (i32.const 6584) "\01\00\00\00\22\00\00\00s\00y\00m\00b\00o\00l\00(\00)\00:\00(\00s\00t\00r\00i\00n\00g\00)")
  (data (;171;) (i32.const 6636) "\1c")
  (data (;172;) (i32.const 6668) "\1c")
  (data (;173;) (i32.const 6680) "\01\00\00\00\06\00\00\00A\00R\00V")
  (data (;174;) (i32.const 6700) ",")
  (data (;175;) (i32.const 6712) "\01\00\00\00\10\00\00\00d\00e\00c\00i\00m\00a\00l\00s")
  (data (;176;) (i32.const 6748) "<")
  (data (;177;) (i32.const 6760) "\01\00\00\00$\00\00\00d\00e\00c\00i\00m\00a\00l\00s\00(\00)\00:\00(\00u\00i\00n\00t\008\00)")
  (data (;178;) (i32.const 6812) "\1c")
  (data (;179;) (i32.const 6844) "\1c")
  (data (;180;) (i32.const 6856) "\15\00\00\00\08\00\00\00\01")
  (data (;181;) (i32.const 6876) ",")
  (data (;182;) (i32.const 6888) "\01\00\00\00\12\00\00\00b\00e\00f\00o\00r\00e\00A\00l\00l")
  (data (;183;) (i32.const 6924) "\1c")
  (data (;184;) (i32.const 6936) "\15\00\00\00\08\00\00\00\02")
  (data (;185;) (i32.const 6956) ",")
  (data (;186;) (i32.const 6968) "\01\00\00\00\10\00\00\00a\00f\00t\00e\00r\00A\00l\00l")
  (data (;187;) (i32.const 7004) "<")
  (data (;188;) (i32.const 7016) "\01\00\00\00\1e\00\00\00L\00o\00c\00k\00s\00 \00l\00i\00f\00e\00c\00y\00c\00l\00e")
  (data (;189;) (i32.const 7068) "l")
  (data (;190;) (i32.const 7080) "\01\00\00\00T\00\00\000\00x\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001")
  (data (;191;) (i32.const 7180) "\1c")
  (data (;192;) (i32.const 7192) "\01\00\00\00\02\00\00\00/")
  (data (;193;) (i32.const 7212) "\1c")
  (data (;194;) (i32.const 7244) "\1c")
  (data (;195;) (i32.const 7256) "\01\00\00\00\0c\00\00\00a\00m\00o\00u\00n\00t")
  (data (;196;) (i32.const 7276) ",")
  (data (;197;) (i32.const 7288) "\01\00\00\00\18\00\00\00l\00o\00c\00k\00D\00u\00r\00a\00t\00i\00o\00n")
  (data (;198;) (i32.const 7324) "\1c")
  (data (;199;) (i32.const 7336) "\01\00\00\00\0a\00\00\00o\00w\00n\00e\00r")
  (data (;200;) (i32.const 7356) ",")
  (data (;201;) (i32.const 7368) "\01\00\00\00\10\00\00\00l\00o\00c\00k\00e\00d\00A\00t")
  (data (;202;) (i32.const 7404) ",")
  (data (;203;) (i32.const 7416) "\01\00\00\00\12\00\00\00l\00o\00c\00k\00O\00w\00n\00e\00r")
  (data (;204;) (i32.const 7452) "\1c")
  (data (;205;) (i32.const 7464) "\01\00\00\00\04\00\00\00i\00d")
  (data (;206;) (i32.const 7484) "\1c")
  (data (;207;) (i32.const 7496) "\01\00\00\00\02\00\00\00-")
  (data (;208;) (i32.const 7516) "<")
  (data (;209;) (i32.const 7528) "\01\00\00\00&\00\00\00T\00o\00k\00e\00n\00L\00o\00c\00k\00e\00r\00C\00o\00n\00t\00r\00a\00c\00t")
  (data (;210;) (i32.const 7580) ",")
  (data (;211;) (i32.const 7592) "\01\00\00\00\18\00\00\00I\00T\00o\00k\00e\00n\00L\00o\00c\00k\00e\00r")
  (data (;212;) (i32.const 7628) "\1c")
  (data (;213;) (i32.const 7660) "\5c")
  (data (;214;) (i32.const 7672) "\01\00\00\00F\00\00\00a\00c\00c\00e\00s\00s\00e\00d\00 \00v\00a\00l\00u\00e\00 \00o\00f\00 \00a\00 \00r\00e\00v\00e\00r\00t\00e\00d\00 \00c\00a\00l\00l\00,\00 ")
  (data (;215;) (i32.const 7756) "\9c")
  (data (;216;) (i32.const 7768) "\01\00\00\00\88\00\00\00p\00l\00e\00a\00s\00e\00 \00c\00h\00e\00c\00k\00 \00t\00h\00e\00 \00`\00r\00e\00v\00e\00r\00t\00e\00d\00`\00 \00f\00i\00e\00l\00d\00 \00b\00e\00f\00o\00r\00e\00 \00a\00c\00c\00e\00s\00s\00i\00n\00g\00 \00t\00h\00e\00 \00`\00v\00a\00l\00u\00e\00`\00 \00f\00i\00e\00l\00d")
  (data (;217;) (i32.const 7916) "\5c")
  (data (;218;) (i32.const 7928) "\01\00\00\00@\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00d\00d\00r\00e\00s\00s")
  (data (;219;) (i32.const 8012) ",")
  (data (;220;) (i32.const 8024) "\01\00\00\00\12\00\00\00a\00s\00A\00c\00c\00o\00u\00n\00t")
  (data (;221;) (i32.const 8060) "|")
  (data (;222;) (i32.const 8072) "\01\00\00\00h\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00T\00o\00k\00e\00n\00L\00o\00c\00k\00e\00r\00C\00o\00n\00t\00r\00a\00c\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;223;) (i32.const 8188) "<")
  (data (;224;) (i32.const 8200) "\01\00\00\00&\00\00\00g\00e\00n\00e\00r\00a\00t\00e\00d\00/\00s\00c\00h\00e\00m\00a\00.\00t\00s")
  (data (;225;) (i32.const 8252) "\bc")
  (data (;226;) (i32.const 8264) "\01\00\00\00\9e\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00T\00o\00k\00e\00n\00L\00o\00c\00k\00e\00r\00C\00o\00n\00t\00r\00a\00c\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;227;) (i32.const 8444) ",")
  (data (;228;) (i32.const 8456) "\01\00\00\00\1a\00\00\00'\00 \00i\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 ")
  (data (;229;) (i32.const 8492) ",")
  (data (;230;) (i32.const 8504) "0\00\00\00\14\00\00\00P \00\00\00\00\00\00\10!\00\00\00\00\00\00\f0\09")
  (data (;231;) (i32.const 8540) "<")
  (data (;232;) (i32.const 8552) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00.")
  (data (;233;) (i32.const 8604) "l")
  (data (;234;) (i32.const 8616) "\01\00\00\00X\00\00\00~\00l\00i\00b\00/\00@\00g\00r\00a\00p\00h\00p\00r\00o\00t\00o\00c\00o\00l\00/\00g\00r\00a\00p\00h\00-\00t\00s\00/\00c\00o\00m\00m\00o\00n\00/\00v\00a\00l\00u\00e\00.\00t\00s")
  (data (;235;) (i32.const 8716) "<")
  (data (;236;) (i32.const 8728) "\01\00\00\00(\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\003\002\00.")
  (data (;237;) (i32.const 8780) "|")
  (data (;238;) (i32.const 8792) "\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
  (data (;239;) (i32.const 8908) "<")
  (data (;240;) (i32.const 8920) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
  (data (;241;) (i32.const 8972) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
  (data (;242;) (i32.const 9372) "\1c\04")
  (data (;243;) (i32.const 9384) "\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
  (data (;244;) (i32.const 10428) "\5c")
  (data (;245;) (i32.const 10440) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
  (data (;246;) (i32.const 10524) "L")
  (data (;247;) (i32.const 10536) "\01\00\00\004\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00B\00i\00g\00D\00e\00c\00i\00m\00a\00l\00.")
  (data (;248;) (i32.const 10604) "L")
  (data (;249;) (i32.const 10616) "\01\00\00\00.\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00b\00o\00o\00l\00e\00a\00n\00.")
  (data (;250;) (i32.const 10684) "\1c")
  (data (;251;) (i32.const 10696) "\01\00\00\00\08\00\00\00t\00r\00u\00e")
  (data (;252;) (i32.const 10716) "\1c")
  (data (;253;) (i32.const 10728) "\01\00\00\00\0a\00\00\00f\00a\00l\00s\00e")
  (data (;254;) (i32.const 10748) "<")
  (data (;255;) (i32.const 10760) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00a\00r\00r\00a\00y\00.")
  (data (;256;) (i32.const 10812) "\1c")
  (data (;257;) (i32.const 10824) "\01\00\00\00\02\00\00\00[")
  (data (;258;) (i32.const 10844) "\1c")
  (data (;259;) (i32.const 10856) "2\00\00\00\08\00\00\00\03")
  (data (;260;) (i32.const 10876) "\1c")
  (data (;261;) (i32.const 10888) "\01\00\00\00\04\00\00\00,\00 ")
  (data (;262;) (i32.const 10908) "\1c")
  (data (;263;) (i32.const 10920) "\01\00\00\00\02\00\00\00]")
  (data (;264;) (i32.const 10940) "L")
  (data (;265;) (i32.const 10952) "\01\00\00\004\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00b\00y\00t\00e\00 \00a\00r\00r\00a\00y\00.")
  (data (;266;) (i32.const 11020) "<")
  (data (;267;) (i32.const 11032) "\01\00\00\00,\00\00\00V\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00B\00i\00g\00I\00n\00t\00.")
  (data (;268;) (i32.const 11084) "<")
  (data (;269;) (i32.const 11096) "\01\00\00\00*\00\00\00U\00n\00k\00n\00o\00w\00n\00 \00d\00a\00t\00a\00 \00(\00k\00i\00n\00d\00 \00=\00 ")
  (data (;270;) (i32.const 11148) "\1c")
  (data (;271;) (i32.const 11160) "\01\00\00\00\02\00\00\00)")
  (data (;272;) (i32.const 11180) "\1c")
  (data (;273;) (i32.const 11192) "0\00\00\00\0c\00\00\00`+\00\00\00\00\00\00\a0+")
  (data (;274;) (i32.const 11212) ",")
  (data (;275;) (i32.const 11224) "\01\00\00\00\12\00\00\00U\00n\00k\00n\00o\00w\00n\00 \00(")
  (data (;276;) (i32.const 11260) "\1c")
  (data (;277;) (i32.const 11272) "0\00\00\00\0c\00\00\00\e0+\00\00\00\00\00\00\a0+")
  (data (;278;) (i32.const 11292) "l")
  (data (;279;) (i32.const 11304) "\01\00\00\00P\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00A\00c\00c\00o\00u\00n\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;280;) (i32.const 11404) "\9c")
  (data (;281;) (i32.const 11416) "\01\00\00\00\86\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00A\00c\00c\00o\00u\00n\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;282;) (i32.const 11564) ",")
  (data (;283;) (i32.const 11576) "0\00\00\00\14\00\00\00\a0,\00\00\00\00\00\00\10!\00\00\00\00\00\00\f0\09")
  (data (;284;) (i32.const 11612) ",")
  (data (;285;) (i32.const 11624) "\01\00\00\00\0e\00\00\00A\00c\00c\00o\00u\00n\00t")
  (data (;286;) (i32.const 11660) ",")
  (data (;287;) (i32.const 11672) "\01\00\00\00\18\00\00\00a\00s\00R\00o\00l\00l\00S\00t\00a\00k\00e\00r")
  (data (;288;) (i32.const 11708) "<")
  (data (;289;) (i32.const 11720) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
  (data (;290;) (i32.const 11772) "<")
  (data (;291;) (i32.const 11784) "\01\00\00\00 \00\00\00B\00y\00t\00e\00s\00 \00o\00f\00 \00l\00e\00n\00g\00t\00h\00 ")
  (data (;292;) (i32.const 11836) "l")
  (data (;293;) (i32.const 11848) "\01\00\00\00T\00\00\00 \00c\00a\00n\00 \00n\00o\00t\00 \00b\00e\00 \00c\00o\00n\00v\00e\00r\00t\00e\00d\00 \00t\00o\00 \002\000\00 \00b\00y\00t\00e\00 \00a\00d\00d\00r\00e\00s\00s\00e\00s")
  (data (;294;) (i32.const 11948) "\1c")
  (data (;295;) (i32.const 11960) "0\00\00\00\0c\00\00\00\10.\00\00\00\00\00\00P.")
  (data (;296;) (i32.const 11980) ",")
  (data (;297;) (i32.const 11992) "\01\00\00\00\1a\00\00\00E\00R\00C\002\000\00C\00o\00n\00t\00r\00a\00c\00t")
  (data (;298;) (i32.const 12028) "\1c")
  (data (;299;) (i32.const 12040) "\01\00\00\00\0c\00\00\00I\00E\00R\00C\002\000")
  (data (;300;) (i32.const 12060) "\1c")
  (data (;301;) (i32.const 12092) "\5c")
  (data (;302;) (i32.const 12104) "\01\00\00\00>\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00 \00s\00t\00r\00i\00n\00g\00.")
  (data (;303;) (i32.const 12188) "\1c")
  (data (;304;) (i32.const 12220) ",")
  (data (;305;) (i32.const 12232) "\01\00\00\00\16\00\00\00t\00o\00t\00a\00l\00S\00u\00p\00p\00l\00y")
  (data (;306;) (i32.const 12268) ",")
  (data (;307;) (i32.const 12280) "\01\00\00\00\18\00\00\00E\00R\00C\002\000\00B\00a\00l\00a\00n\00c\00e")
  (data (;308;) (i32.const 12316) ",")
  (data (;309;) (i32.const 12328) "\01\00\00\00\10\00\00\00c\00o\00n\00t\00r\00a\00c\00t")
  (data (;310;) (i32.const 12364) ",")
  (data (;311;) (i32.const 12376) "\01\00\00\00\0e\00\00\00a\00c\00c\00o\00u\00n\00t")
  (data (;312;) (i32.const 12412) "\1c")
  (data (;313;) (i32.const 12424) "\01\00\00\00\0a\00\00\00v\00a\00l\00u\00e")
  (data (;314;) (i32.const 12444) ",")
  (data (;315;) (i32.const 12456) "\01\00\00\00\14\00\00\00v\00a\00l\00u\00e\00E\00x\00a\00c\00t")
  (data (;316;) (i32.const 12492) "l")
  (data (;317;) (i32.const 12504) "\01\00\00\00Z\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00E\00R\00C\002\000\00B\00a\00l\00a\00n\00c\00e\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;318;) (i32.const 12604) "\ac")
  (data (;319;) (i32.const 12616) "\01\00\00\00\92\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00E\00R\00C\002\000\00B\00a\00l\00a\00n\00c\00e\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;320;) (i32.const 12780) ",")
  (data (;321;) (i32.const 12792) "0\00\00\00\14\00\00\00P1\00\00\00\00\00\00\10!\00\00\00\00\00\00\f0\09")
  (data (;322;) (i32.const 12828) "l")
  (data (;323;) (i32.const 12840) "\01\00\00\00\5c\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00E\00R\00C\002\000\00C\00o\00n\00t\00r\00a\00c\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;324;) (i32.const 12940) "\ac")
  (data (;325;) (i32.const 12952) "\01\00\00\00\92\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00E\00R\00C\002\000\00C\00o\00n\00t\00r\00a\00c\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00B\00y\00t\00e\00s\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;326;) (i32.const 13116) ",")
  (data (;327;) (i32.const 13128) "0\00\00\00\14\00\00\00\a02\00\00\00\00\00\00\10!\00\00\00\00\00\00\f0\09")
  (data (;328;) (i32.const 13164) ",")
  (data (;329;) (i32.const 13176) "\01\00\00\00\0e\00\00\00a\00s\00E\00R\00C\002\000")
  (data (;330;) (i32.const 13212) ",")
  (data (;331;) (i32.const 13224) "\01\00\00\00\0e\00\00\00e\00m\00i\00t\00t\00e\00r")
  (data (;332;) (i32.const 13260) ",")
  (data (;333;) (i32.const 13272) "\01\00\00\00\12\00\00\00t\00i\00m\00e\00s\00t\00a\00m\00p")
  (data (;334;) (i32.const 13308) ",")
  (data (;335;) (i32.const 13320) "\01\00\00\00\16\00\00\00b\00l\00o\00c\00k\00N\00u\00m\00b\00e\00r")
  (data (;336;) (i32.const 13356) "l")
  (data (;337;) (i32.const 13368) "\01\00\00\00X\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;338;) (i32.const 13468) "\ac")
  (data (;339;) (i32.const 13480) "\01\00\00\00\90\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;340;) (i32.const 13644) ",")
  (data (;341;) (i32.const 13656) "0\00\00\00\14\00\00\00\b04\00\00\00\00\00\00\10!\00\00\00\00\00\00\f0\09")
  (data (;342;) (i32.const 13692) ",")
  (data (;343;) (i32.const 13704) "\01\00\00\00\16\00\00\00T\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n")
  (data (;344;) (i32.const 13740) ",")
  (data (;345;) (i32.const 13752) "\01\00\00\00\16\00\00\00t\00r\00a\00n\00s\00a\00c\00t\00i\00o\00n")
  (data (;346;) (i32.const 13788) "\5c")
  (data (;347;) (i32.const 13800) "\01\00\00\00J\00\00\00E\00t\00h\00e\00r\00e\00u\00m\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00a\00n\00 \00i\00n\00t\00 \00o\00r\00 \00u\00i\00n\00t\00.")
  (data (;348;) (i32.const 13884) ",")
  (data (;349;) (i32.const 13896) "\01\00\00\00\16\00\00\00a\00m\00o\00u\00n\00t\00E\00x\00a\00c\00t")
  (data (;350;) (i32.const 13932) ",")
  (data (;351;) (i32.const 13944) "\01\00\00\00\0e\00\00\00A\00R\00V\00L\00o\00c\00k")
  (data (;352;) (i32.const 13980) ",")
  (data (;353;) (i32.const 13992) "\01\00\00\00\12\00\00\00a\00u\00x\00o\00V\00a\00l\00u\00e")
  (data (;354;) (i32.const 14028) ",")
  (data (;355;) (i32.const 14040) "\01\00\00\00\1c\00\00\00a\00u\00x\00o\00V\00a\00l\00u\00e\00E\00x\00a\00c\00t")
  (data (;356;) (i32.const 14076) ",")
  (data (;357;) (i32.const 14088) "\01\00\00\00\10\00\00\00a\00r\00v\00V\00a\00l\00u\00e")
  (data (;358;) (i32.const 14124) ",")
  (data (;359;) (i32.const 14136) "\01\00\00\00\1a\00\00\00a\00r\00v\00V\00a\00l\00u\00e\00E\00x\00a\00c\00t")
  (data (;360;) (i32.const 14172) "l")
  (data (;361;) (i32.const 14184) "\01\00\00\00P\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00A\00R\00V\00L\00o\00c\00k\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;362;) (i32.const 14284) "\9c")
  (data (;363;) (i32.const 14296) "\01\00\00\00\88\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00A\00R\00V\00L\00o\00c\00k\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;364;) (i32.const 14444) ",")
  (data (;365;) (i32.const 14456) "0\00\00\00\14\00\00\00\e07\00\00\00\00\00\00\10!\00\00\00\00\00\00\f0\09")
  (data (;366;) (i32.const 14492) "\8c")
  (data (;367;) (i32.const 14504) "\01\00\00\00r\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00d\00i\00v\00i\00d\00e\00 \00B\00i\00g\00I\00n\00t\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;368;) (i32.const 14636) "<")
  (data (;369;) (i32.const 14648) "\01\00\00\00(\00\00\00o\00v\00e\00r\00f\00l\00o\00w\00 \00c\00o\00n\00v\00e\00r\00t\00i\00n\00g\00 ")
  (data (;370;) (i32.const 14700) ",")
  (data (;371;) (i32.const 14712) "\01\00\00\00\0e\00\00\00 \00t\00o\00 \00i\003\002")
  (data (;372;) (i32.const 14748) "\1c")
  (data (;373;) (i32.const 14760) "\01\00\00\00\08\00\00\00l\00o\00c\00k")
  (data (;374;) (i32.const 14780) "l")
  (data (;375;) (i32.const 14792) "\01\00\00\00V\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00A\00R\00V\00D\00e\00p\00o\00s\00i\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;376;) (i32.const 14892) "\ac")
  (data (;377;) (i32.const 14904) "\01\00\00\00\8e\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00A\00R\00V\00D\00e\00p\00o\00s\00i\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;378;) (i32.const 15068) ",")
  (data (;379;) (i32.const 15080) "0\00\00\00\14\00\00\00@:\00\00\00\00\00\00\10!\00\00\00\00\00\00\f0\09")
  (data (;380;) (i32.const 15116) ",")
  (data (;381;) (i32.const 15128) "\01\00\00\00\14\00\00\00A\00R\00V\00D\00e\00p\00o\00s\00i\00t")
  (data (;382;) (i32.const 15164) "<")
  (data (;383;) (i32.const 15176) "\01\00\00\00\1e\00\00\00A\00s\00s\00e\00r\00t\00i\00o\00n\00 \00E\00r\00r\00o\00r")
  (data (;384;) (i32.const 15228) "\5c")
  (data (;385;) (i32.const 15240) "\01\00\00\00J\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00c\00h\00s\00t\00i\00c\00k\00-\00a\00s\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s")
  (data (;386;) (i32.const 15324) "<")
  (data (;387;) (i32.const 15336) "\01\00\00\00(\00\00\005\009\001\002\003\005\002\000\004\008\002\003\000\000\000\000\000\000\000\000")
  (data (;388;) (i32.const 15388) ",")
  (data (;389;) (i32.const 15400) "\01\00\00\00\1a\00\00\005\009\00.\001\002\003\005\002\000\004\008\002\003")
  (data (;390;) (i32.const 15436) "|")
  (data (;391;) (i32.const 15448) "\01\00\00\00l\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00s\00u\00m\00 \00B\00i\00g\00I\00n\00t\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;392;) (i32.const 15564) "|")
  (data (;393;) (i32.const 15576) "\01\00\00\00d\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00A\00R\00V\00I\00n\00c\00r\00e\00a\00s\00e\00A\00m\00o\00u\00n\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;394;) (i32.const 15692) "\ac")
  (data (;395;) (i32.const 15704) "\01\00\00\00\9c\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00A\00R\00V\00I\00n\00c\00r\00e\00a\00s\00e\00A\00m\00o\00u\00n\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;396;) (i32.const 15868) ",")
  (data (;397;) (i32.const 15880) "0\00\00\00\14\00\00\00`=\00\00\00\00\00\00\10!\00\00\00\00\00\00\f0\09")
  (data (;398;) (i32.const 15916) "<")
  (data (;399;) (i32.const 15928) "\01\00\00\00\22\00\00\00A\00R\00V\00I\00n\00c\00r\00e\00a\00s\00e\00A\00m\00o\00u\00n\00t")
  (data (;400;) (i32.const 15980) "<")
  (data (;401;) (i32.const 15992) "\01\00\00\00(\00\00\008\008\006\008\005\002\008\000\007\002\003\004\005\000\000\000\000\000\000\000")
  (data (;402;) (i32.const 16044) ",")
  (data (;403;) (i32.const 16056) "\01\00\00\00\1c\00\00\008\008\00.\006\008\005\002\008\000\007\002\003\004\005")
  (data (;404;) (i32.const 16092) "|")
  (data (;405;) (i32.const 16104) "\01\00\00\00h\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00A\00R\00V\00I\00n\00c\00r\00e\00a\00s\00e\00D\00u\00r\00a\00t\00i\00o\00n\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;406;) (i32.const 16220) "\bc")
  (data (;407;) (i32.const 16232) "\01\00\00\00\a0\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00A\00R\00V\00I\00n\00c\00r\00e\00a\00s\00e\00D\00u\00r\00a\00t\00i\00o\00n\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;408;) (i32.const 16412) ",")
  (data (;409;) (i32.const 16424) "0\00\00\00\14\00\00\00p?\00\00\00\00\00\00\10!\00\00\00\00\00\00\f0\09")
  (data (;410;) (i32.const 16460) "<")
  (data (;411;) (i32.const 16472) "\01\00\00\00&\00\00\00A\00R\00V\00I\00n\00c\00r\00e\00a\00s\00e\00D\00u\00r\00a\00t\00i\00o\00n")
  (data (;412;) (i32.const 16524) "<")
  (data (;413;) (i32.const 16536) "\01\00\00\00*\00\00\001\001\008\006\004\000\002\007\005\001\000\006\004\009\000\000\000\000\000\000\000")
  (data (;414;) (i32.const 16588) "<")
  (data (;415;) (i32.const 16600) "\01\00\00\00\1e\00\00\001\001\008\00.\006\004\000\002\007\005\001\000\006\004\009")
  (data (;416;) (i32.const 16652) "\8c")
  (data (;417;) (i32.const 16664) "\01\00\00\00v\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00s\00u\00b\00t\00r\00a\00c\00t\00 \00B\00i\00g\00I\00n\00t\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00l\00e\00f\00t\00 \00h\00a\00n\00d\00 \00s\00i\00d\00e\00 \00i\00s\00 \00'\00n\00u\00l\00l\00'")
  (data (;418;) (i32.const 16796) "l")
  (data (;419;) (i32.const 16808) "\01\00\00\00\5c\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00A\00R\00V\00W\00i\00t\00h\00d\00r\00a\00w\00a\00l\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;420;) (i32.const 16908) "\ac")
  (data (;421;) (i32.const 16920) "\01\00\00\00\94\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00A\00R\00V\00W\00i\00t\00h\00d\00r\00a\00w\00a\00l\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;422;) (i32.const 17084) ",")
  (data (;423;) (i32.const 17096) "0\00\00\00\14\00\00\00 B\00\00\00\00\00\00\10!\00\00\00\00\00\00\f0\09")
  (data (;424;) (i32.const 17132) ",")
  (data (;425;) (i32.const 17144) "\01\00\00\00\1a\00\00\00A\00R\00V\00W\00i\00t\00h\00d\00r\00a\00w\00a\00l")
  (data (;426;) (i32.const 17180) "<")
  (data (;427;) (i32.const 17192) "\01\00\00\00(\00\00\007\009\000\009\003\005\001\006\007\003\007\006\006\000\000\000\000\000\000\000")
  (data (;428;) (i32.const 17244) ",")
  (data (;429;) (i32.const 17256) "\01\00\00\00\1c\00\00\007\009\00.\000\009\003\005\001\006\007\003\007\006\006")
  (data (;430;) (i32.const 17292) "l")
  (data (;431;) (i32.const 17304) "\01\00\00\00\5c\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00A\00R\00V\00B\00o\00o\00s\00t\00T\00o\00M\00a\00x\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;432;) (i32.const 17404) "\ac")
  (data (;433;) (i32.const 17416) "\01\00\00\00\94\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00A\00R\00V\00B\00o\00o\00s\00t\00T\00o\00M\00a\00x\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;434;) (i32.const 17580) ",")
  (data (;435;) (i32.const 17592) "0\00\00\00\14\00\00\00\10D\00\00\00\00\00\00\10!\00\00\00\00\00\00\f0\09")
  (data (;436;) (i32.const 17628) ",")
  (data (;437;) (i32.const 17640) "\01\00\00\00\1a\00\00\00A\00R\00V\00B\00o\00o\00s\00t\00T\00o\00M\00a\00x")
  (data (;438;) (i32.const 17676) "<")
  (data (;439;) (i32.const 17688) "\01\00\00\00*\00\00\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000")
  (data (;440;) (i32.const 17740) "\1c")
  (data (;441;) (i32.const 17752) "\01\00\00\00\06\00\00\001\000\000")
  (data (;442;) (i32.const 17772) "l")
  (data (;443;) (i32.const 17784) "\01\00\00\00Z\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00A\00R\00V\00E\00a\00r\00l\00y\00E\00x\00i\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;444;) (i32.const 17884) "\ac")
  (data (;445;) (i32.const 17896) "\01\00\00\00\92\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00A\00R\00V\00E\00a\00r\00l\00y\00E\00x\00i\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;446;) (i32.const 18060) ",")
  (data (;447;) (i32.const 18072) "0\00\00\00\14\00\00\00\f0E\00\00\00\00\00\00\10!\00\00\00\00\00\00\f0\09")
  (data (;448;) (i32.const 18108) ",")
  (data (;449;) (i32.const 18120) "\01\00\00\00\18\00\00\00A\00R\00V\00E\00a\00r\00l\00y\00E\00x\00i\00t")
  (data (;450;) (i32.const 18156) "\1c")
  (data (;451;) (i32.const 18168) "\15\00\00\00\08\00\00\00\04")
  (data (;452;) (i32.const 18188) "\1c")
  (data (;453;) (i32.const 18200) "\01\00\00\00\0a\00\00\00E\00j\00e\00c\00t")
  (data (;454;) (i32.const 18220) "l")
  (data (;455;) (i32.const 18232) "\01\00\00\00R\00\00\00C\00a\00n\00n\00o\00t\00 \00s\00a\00v\00e\00 \00A\00R\00V\00E\00j\00e\00c\00t\00 \00e\00n\00t\00i\00t\00y\00 \00w\00i\00t\00h\00o\00u\00t\00 \00a\00n\00 \00I\00D")
  (data (;456;) (i32.const 18332) "\9c")
  (data (;457;) (i32.const 18344) "\01\00\00\00\8a\00\00\00E\00n\00t\00i\00t\00i\00e\00s\00 \00o\00f\00 \00t\00y\00p\00e\00 \00A\00R\00V\00E\00j\00e\00c\00t\00 \00m\00u\00s\00t\00 \00h\00a\00v\00e\00 \00a\00n\00 \00I\00D\00 \00o\00f\00 \00t\00y\00p\00e\00 \00S\00t\00r\00i\00n\00g\00 \00b\00u\00t\00 \00t\00h\00e\00 \00i\00d\00 \00'")
  (data (;458;) (i32.const 18492) ",")
  (data (;459;) (i32.const 18504) "0\00\00\00\14\00\00\00\b0G\00\00\00\00\00\00\10!\00\00\00\00\00\00\f0\09")
  (data (;460;) (i32.const 18540) ",")
  (data (;461;) (i32.const 18552) "\01\00\00\00\10\00\00\00A\00R\00V\00E\00j\00e\00c\00t")
  (data (;462;) (i32.const 18588) "\1c")
  (data (;463;) (i32.const 18600) "\15\00\00\00\08\00\00\00\05")
  (data (;464;) (i32.const 18620) "\1c")
  (data (;465;) (i32.const 18632) "\15\00\00\00\08\00\00\00\06")
  (data (;466;) (i32.const 18652) "<")
  (data (;467;) (i32.const 18668) " \00\00\00\a0\04\00\00\c0\04\00\00\e0\04\00\00\10\05\00\000\05\00\00P\05\00\00p\05\00\00\90\05")
  (data (;468;) (i32.const 18716) ",")
  (data (;469;) (i32.const 18728) "\03\00\00\00\10\00\00\00\f0H\00\00\f0H\00\00 \00\00\00\08"))
