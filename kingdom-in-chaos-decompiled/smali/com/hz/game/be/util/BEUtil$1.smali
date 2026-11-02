.class final Lcom/hz/game/be/util/BEUtil$1;
.super Ljava/lang/Object;
.source "BEUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hz/game/be/util/BEUtil;->changeLanguage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$index:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/hz/game/be/util/BEUtil$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/hz/game/be/util/BEUtil$1;->val$index:I

    invoke-static {v0}, Lcom/hz/game/be/util/BEUtil;->access$000(I)V

    .line 52
    return-void
.end method
