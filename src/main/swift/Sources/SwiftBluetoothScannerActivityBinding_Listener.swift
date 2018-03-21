
import java_swift

/// generated by: genswift.java 'java/lang|java/util|java/sql' 'Sources' '../java' ///

/// interface com.johnholdsworth.swiftbindings.SwiftBluetoothScannerActivityBinding$Listener ///

public protocol SwiftBluetoothScannerActivityBinding_Listener: SwiftActivityBinding_Listener {

}


open class SwiftBluetoothScannerActivityBinding_ListenerForward: SwiftActivityBinding_ListenerForward, SwiftBluetoothScannerActivityBinding_Listener {

    private static var SwiftBluetoothScannerActivityBinding_ListenerJNIClass: jclass?

}

private typealias SwiftBluetoothScannerActivityBinding_Listener_viewDidLoad_0_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong ) -> ()

private func SwiftBluetoothScannerActivityBinding_Listener_viewDidLoad_0( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong ) -> () {
    SwiftBluetoothScannerActivityBinding_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).viewDidLoad( )
}

fileprivate class SwiftBluetoothScannerActivityBinding_ListenerLocal_: JNILocalProxy<SwiftBluetoothScannerActivityBinding_Listener, Any> {

    fileprivate static let _proxyClass: jclass = {
        var natives = [JNINativeMethod]()

        let SwiftBluetoothScannerActivityBinding_Listener_viewDidLoad_0_thunk: SwiftBluetoothScannerActivityBinding_Listener_viewDidLoad_0_type = SwiftBluetoothScannerActivityBinding_Listener_viewDidLoad_0
        natives.append( JNINativeMethod( name: strdup("__viewDidLoad"), signature: strdup("(J)V"), fnPtr: unsafeBitCast( SwiftBluetoothScannerActivityBinding_Listener_viewDidLoad_0_thunk, to: UnsafeMutableRawPointer.self ) ) )

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

    override open class func proxyClassName() -> String { return "org/swiftjava/com_johnholdsworth/SwiftBluetoothScannerActivityBinding_ListenerProxy" }
    override open class func proxyClass() -> jclass? { return _proxyClass }

}

extension SwiftBluetoothScannerActivityBinding_Listener {

    public func localJavaObject( _ locals: UnsafeMutablePointer<[jobject]> ) -> jobject? {
        return SwiftBluetoothScannerActivityBinding_ListenerLocal_( owned: self, proto: self ).localJavaObject( locals )
    }

}

open class SwiftBluetoothScannerActivityBinding_ListenerBase: SwiftBluetoothScannerActivityBinding_Listener {

    public init() {}

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftActivityBinding$Listener.viewDidLoad()

    open func viewDidLoad() /**/ {
    }


}
