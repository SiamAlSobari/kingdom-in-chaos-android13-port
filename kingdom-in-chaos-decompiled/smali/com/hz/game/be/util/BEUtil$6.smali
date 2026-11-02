.class final Lcom/hz/game/be/util/BEUtil$6;
.super Ljava/lang/Object;
.source "BEUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hz/game/be/util/BEUtil;->selectLanguage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dindex:I

.field final synthetic val$options:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/hz/game/be/util/BEUtil$6;->val$options:[Ljava/lang/String;

    iput p2, p0, Lcom/hz/game/be/util/BEUtil$6;->val$dindex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/hz/game/be/util/BEUtil;->access$100()Lcom/droidhang/ph/GameActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/hz/game/be/util/BEUtil;->access$100()Lcom/droidhang/ph/GameActivity;

    move-result-object v1

    const v2, 0x7f050043

    invoke-virtual {v1, v2}, Lcom/droidhang/ph/GameActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/hz/game/be/util/BEUtil$6;->val$options:[Ljava/lang/String;

    iget v2, p0, Lcom/hz/game/be/util/BEUtil$6;->val$dindex:I

    new-instance v3, Lcom/hz/game/be/util/BEUtil$6$1;

    invoke-direct {v3, p0}, Lcom/hz/game/be/util/BEUtil$6$1;-><init>(Lcom/hz/game/be/util/BEUtil$6;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 127
    return-void
.end method
