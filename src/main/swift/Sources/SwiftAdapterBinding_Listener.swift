
import java_swift

/// generated by: genswift.java 'java/lang|java/util|java/sql' 'Sources' '../java' ///

/// interface com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Listener ///

public protocol SwiftAdapterBinding_Listener: JavaProtocol {

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Listener.configureCell(com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Cell,int)

    func configureCell( cell: SwiftAdapterBinding_Cell?, row: Int )

    /// public abstract int com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Listener.numberOfRows()

    func numberOfRows() -> Int

}


open class SwiftAdapterBinding_ListenerForward: JNIObjectForward, SwiftAdapterBinding_Listener {

    private static var SwiftAdapterBinding_ListenerJNIClass: jclass?

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Listener.configureCell(com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Cell,int)

    private static var configureCell_MethodID_3: jmethodID?

    open func configureCell( cell: SwiftAdapterBinding_Cell?, row: Int ) {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = JNIType.toJava( value: cell, locals: &__locals )
        __args[1] = jvalue( i: jint(row) )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "configureCell", methodSig: "(Lcom/johnholdsworth/swiftbindings/SwiftAdapterBinding$Cell;I)V", methodCache: &SwiftAdapterBinding_ListenerForward.configureCell_MethodID_3, args: &__args, locals: &__locals )
    }

    open func configureCell( _ _cell: SwiftAdapterBinding_Cell?, _ _row: Int ) {
        configureCell( cell: _cell, row: _row )
    }

    /// public abstract int com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Listener.numberOfRows()

    private static var numberOfRows_MethodID_4: jmethodID?

    open func numberOfRows() -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "numberOfRows", methodSig: "()I", methodCache: &SwiftAdapterBinding_ListenerForward.numberOfRows_MethodID_4, args: &__args, locals: &__locals )
        return Int(__return)
    }


}

private typealias SwiftAdapterBinding_Listener_configureCell_0_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jobject?, _: jint ) -> ()

private func SwiftAdapterBinding_Listener_configureCell_0( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ cell: jobject?, _ row: jint ) -> () {
    SwiftAdapterBinding_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).configureCell( cell: cell != nil ? SwiftAdapterBinding_CellForward( javaObject: cell ) : nil, row: Int(row) )
}

private typealias SwiftAdapterBinding_Listener_numberOfRows_1_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong ) -> jint

private func SwiftAdapterBinding_Listener_numberOfRows_1( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong ) -> jint {
    let __return = SwiftAdapterBinding_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).numberOfRows( )
    var __locals = [jobject]()
    return JNI.check( jvalue( i: jint(__return) ).i, &__locals, removeLast: true )
}

fileprivate class SwiftAdapterBinding_ListenerLocal_: JNILocalProxy<SwiftAdapterBinding_Listener, Any> {

    fileprivate static let _proxyClass: jclass = {
        var natives = [JNINativeMethod]()

        let SwiftAdapterBinding_Listener_configureCell_0_thunk: SwiftAdapterBinding_Listener_configureCell_0_type = SwiftAdapterBinding_Listener_configureCell_0
        natives.append( JNINativeMethod( name: strdup("__configureCell"), signature: strdup("(JLcom/johnholdsworth/swiftbindings/SwiftAdapterBinding$Cell;I)V"), fnPtr: unsafeBitCast( SwiftAdapterBinding_Listener_configureCell_0_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let SwiftAdapterBinding_Listener_numberOfRows_1_thunk: SwiftAdapterBinding_Listener_numberOfRows_1_type = SwiftAdapterBinding_Listener_numberOfRows_1
        natives.append( JNINativeMethod( name: strdup("__numberOfRows"), signature: strdup("(J)I"), fnPtr: unsafeBitCast( SwiftAdapterBinding_Listener_numberOfRows_1_thunk, to: UnsafeMutableRawPointer.self ) ) )

        natives.append( JNINativeMethod( name: strdup("__finalize"), signature: strdup("(J)V"), fnPtr: unsafeBitCast( JNIReleasableProxy__finalize_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let clazz = JNI.FindClass( proxyClassName() )
        withUnsafePointer(to: &natives[0]) {
            nativesPtr in
            if JNI.api.RegisterNatives( JNI.env, clazz, nativesPtr, jint(natives.count) ) != jint(JNI_OK) {
                JNI.report( "Unable to register java natives" )
            }
        }

        defer { JNI.DeleteLocalRef( clazz ) }
        return JNI.api.NewGlobalRef( JNI.env, clazz )!
    }()

    override open class func proxyClassName() -> String { return "org/swiftjava/com_johnholdsworth/SwiftAdapterBinding_ListenerProxy" }
    override open class func proxyClass() -> jclass? { return _proxyClass }

}

extension SwiftAdapterBinding_Listener {

    public func localJavaObject( _ locals: UnsafeMutablePointer<[jobject]> ) -> jobject? {
        return SwiftAdapterBinding_ListenerLocal_( owned: self, proto: self ).localJavaObject( locals )
    }

}

open class SwiftAdapterBinding_ListenerBase: SwiftAdapterBinding_Listener {

    public init() {}

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Listener.configureCell(com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Cell,int)

    open func configureCell( cell: SwiftAdapterBinding_Cell?, row: Int ) /**/ {
    }


    /// public abstract int com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Listener.numberOfRows()

    open func numberOfRows() -> Int /**/ {
        return 0
    }


}
