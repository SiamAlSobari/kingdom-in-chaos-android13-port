.class final Lcom/hz/game/be/util/BEUtil$8;
.super Ljava/lang/Object;
.source "BEUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hz/game/be/util/BEUtil;->onWindowFocusChanged(ILandroid/opengl/GLSurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$value:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/hz/game/be/util/BEUtil$8;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/hz/game/be/util/BEUtil$8;->val$value:I

    invoke-static {v0}, Lcom/hz/game/be/util/BEUtil;->nOnWindowFocusChanged(I)V

    return-void
.end method
