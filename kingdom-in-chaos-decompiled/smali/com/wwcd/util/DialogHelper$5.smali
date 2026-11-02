.class final Lcom/wwcd/util/DialogHelper$5;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wwcd/util/DialogHelper;->showButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/wwcd/util/DialogAction;Lcom/wwcd/util/DialogAction;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$action1:Lcom/wwcd/util/DialogAction;


# direct methods
.method constructor <init>(Lcom/wwcd/util/DialogAction;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/wwcd/util/DialogHelper$5;->val$action1:Lcom/wwcd/util/DialogAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wwcd/util/DialogHelper$5;->val$action1:Lcom/wwcd/util/DialogAction;

    invoke-interface {v0}, Lcom/wwcd/util/DialogAction;->doAction()V

    .line 123
    return-void
.end method
