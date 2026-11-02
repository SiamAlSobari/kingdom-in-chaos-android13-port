.class final Lcom/wwcd/util/AndroidUtil$4;
.super Ljava/lang/Object;
.source "AndroidUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wwcd/util/AndroidUtil;->popNewVersionDlgForHttpForceDownload(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bt:Ljava/lang/String;

.field final synthetic val$ctx:Landroid/app/Activity;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$dlurl:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/wwcd/util/AndroidUtil$4;->val$ctx:Landroid/app/Activity;

    iput-object p2, p0, Lcom/wwcd/util/AndroidUtil$4;->val$description:Ljava/lang/String;

    iput-object p3, p0, Lcom/wwcd/util/AndroidUtil$4;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/wwcd/util/AndroidUtil$4;->val$bt:Ljava/lang/String;

    iput-object p5, p0, Lcom/wwcd/util/AndroidUtil$4;->val$dlurl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 236
    iget-object v0, p0, Lcom/wwcd/util/AndroidUtil$4;->val$ctx:Landroid/app/Activity;

    iget-object v1, p0, Lcom/wwcd/util/AndroidUtil$4;->val$description:Ljava/lang/String;

    iget-object v2, p0, Lcom/wwcd/util/AndroidUtil$4;->val$title:Ljava/lang/String;

    iget-object v3, p0, Lcom/wwcd/util/AndroidUtil$4;->val$bt:Ljava/lang/String;

    new-instance v4, Lcom/wwcd/util/AndroidUtil$4$1;

    invoke-direct {v4, p0}, Lcom/wwcd/util/AndroidUtil$4$1;-><init>(Lcom/wwcd/util/AndroidUtil$4;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/wwcd/util/DialogHelper;->showButtonDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wwcd/util/DialogAction;)V

    .line 242
    return-void
.end method
