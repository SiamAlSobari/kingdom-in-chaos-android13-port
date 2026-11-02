.class Lcom/hz/game/be/util/BEUtil$6$1;
.super Ljava/lang/Object;
.source "BEUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hz/game/be/util/BEUtil$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hz/game/be/util/BEUtil$6;


# direct methods
.method constructor <init>(Lcom/hz/game/be/util/BEUtil$6;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/hz/game/be/util/BEUtil$6$1;->this$0:Lcom/hz/game/be/util/BEUtil$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "index"    # I

    .prologue
    .line 122
    const-string v0, "be"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x5

    .end local p2    # "index":I
    :cond_0
    invoke-static {p2}, Lcom/hz/game/be/util/BEUtil;->changeLanguage(I)V

    .line 124
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 125
    return-void
.end method
