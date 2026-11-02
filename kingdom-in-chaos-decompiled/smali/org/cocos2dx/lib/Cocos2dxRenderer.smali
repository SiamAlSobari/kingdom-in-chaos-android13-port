.class public Lorg/cocos2dx/lib/Cocos2dxRenderer;
.super Ljava/lang/Object;
.source "Cocos2dxRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static sNativeInitDone:Z
.field private static final NANOSECONDSPERMICROSECOND:J = 0xf4240L

.field private static final NANOSECONDSPERSECOND:J = 0x3b9aca00L

.field private static sAnimationInterval:J


# instance fields
.field private _ctx:Landroid/app/Activity;

.field private _glSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mLastTickInNanoSeconds:J

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-wide/32 v0, 0xfe502a

    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/opengl/GLSurfaceView;)V
    .locals 1
    .param p1, "ctx"    # Landroid/app/Activity;
    .param p2, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mStarted:Z

    .line 68
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->_ctx:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 70
    return-void
.end method

.method private static native nativeDeleteBackward()V
.end method

.method private static native nativeGetContentText()Ljava/lang/String;
.end method

.method private static native nativeInit(IILandroid/content/Context;Landroid/opengl/GLSurfaceView;)V
.end method

.method private static native nativeInsertText(Ljava/lang/String;)V
.end method

.method private static native nativeKeyDown(I)Z
.end method

.method private static native nativeOnPause()V
.end method

.method private static native nativeOnResume()V
.end method

.method private static native nativeRender()V
.end method

.method private nativeStart(II)V
    .locals 5
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I

    .prologue
    .line 86
    const-string v0, ""

    .line 87
    .local v0, "model":Ljava/lang/String;
    const/4 v1, 0x0

    .line 89
    .local v1, "version":I
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 91
    const-string v2, "be"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "model="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    const-string v2, "be"

    const-string v3, "nativeInit"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->_ctx:Landroid/app/Activity;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-static {p1, p2, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInit(IILandroid/content/Context;Landroid/opengl/GLSurfaceView;)V

    const/4 v2, 0x1

    sput-boolean v2, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    .line 97
    return-void

    .line 92
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static native nativeTouchesBegin(IFF)V
.end method

.method private static native nativeTouchesCancel([I[F[F)V
.end method

.method private static native nativeTouchesEnd(IFF)V
.end method

.method private static native nativeTouchesMove([I[F[F)V
.end method

.method public static setAnimationInterval(D)V
    .locals 2
    .param p0, "pAnimationInterval"    # D

    .prologue
    .line 73
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, p0

    double-to-long v0, v0

    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    .line 74
    return-void
.end method


# virtual methods
.method public getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeGetContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActionCancel([I[F[F)V
    .locals 1
    .param p1, "pIDs"    # [I
    .param p2, "pXs"    # [F
    .param p3, "pYs"    # [F

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesCancel([I[F[F)V

    return-void
.end method

.method public handleActionDown(IFF)V
    .locals 1
    .param p1, "pID"    # I
    .param p2, "pX"    # F
    .param p3, "pY"    # F

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesBegin(IFF)V

    return-void
.end method

.method public handleActionMove([I[F[F)V
    .locals 1
    .param p1, "pIDs"    # [I
    .param p2, "pXs"    # [F
    .param p3, "pYs"    # [F

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesMove([I[F[F)V

    return-void
.end method

.method public handleActionUp(IFF)V
    .locals 1
    .param p1, "pID"    # I
    .param p2, "pX"    # F
    .param p3, "pY"    # F

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesEnd(IFF)V

    return-void
.end method

.method public handleDeleteBackward()V
    .locals 0

    .prologue
    .line 197
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeDeleteBackward()V

    .line 198
    return-void
.end method

.method public handleInsertText(Ljava/lang/String;)V
    .locals 0
    .param p1, "pText"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInsertText(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public handleKeyDown(I)V
    .locals 1
    .param p1, "pKeyCode"    # I

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeKeyDown(I)Z

    return-void
.end method

.method public handleOnPause()V
    .locals 1

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_native_pause_ok

    return-void

    :cond_native_pause_ok
    .line 181
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnPause()V

    .line 182
    return-void
.end method

.method public handleOnResume()V
    .locals 1

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_native_resume_ok

    return-void

    :cond_native_resume_ok
    .line 185
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnResume()V

    .line 186
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    sget-boolean v4, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v4, :cond_native_draw_ok

    return-void

    :cond_native_draw_ok
    .line 127
    sget-wide v4, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    long-to-double v4, v4

    const-wide v6, 0x416fca0555555555L    # 1.6666666666666666E7

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 128
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    .line 144
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 131
    .local v0, "now":J
    iget-wide v4, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    sget-wide v6, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    add-long/2addr v4, v6

    sub-long v2, v4, v0

    .line 132
    .local v2, "remain":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 134
    const-wide/32 v4, 0xf4240

    :try_start_0
    div-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    .line 142
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    goto :goto_0

    .line 135
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "pGL10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pWidth"    # I
    .param p3, "pHeight"    # I

    .prologue
    const/4 v1, 0x1

    .line 111
    const-string v2, "be"

    const-string v3, "onSurfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->_ctx:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 113
    .local v0, "landscape":Z
    :goto_0
    iget-boolean v2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mStarted:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    if-ge p2, p3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-lt p3, p2, :cond_2

    .line 114
    :cond_1
    iput-boolean v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mStarted:Z

    .line 115
    const-string v1, "be"

    const-string v2, "nativeStart from onSurfaceChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeStart(II)V

    .line 117
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    .line 119
    :cond_2
    return-void

    .line 112
    .end local v0    # "landscape":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "pGL10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pEGLConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 101
    const-string v0, "be"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated\uff0cmStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mStarted:Z

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "be"

    const-string v1, "nativeStart from onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    invoke-direct {p0, v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeStart(II)V

    .line 105
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    .line 107
    :cond_0
    return-void
.end method

.method public setScreenWidthAndHeight(II)V
    .locals 0
    .param p1, "pSurfaceWidth"    # I
    .param p2, "pSurfaceHeight"    # I

    .prologue
    .line 77
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    .line 78
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    .line 79
    return-void
.end method
