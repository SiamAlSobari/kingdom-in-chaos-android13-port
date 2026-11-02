.class Lcom/wwcd/util/AndroidUtil$4$1;
.super Ljava/lang/Object;
.source "AndroidUtil.java"

# interfaces
.implements Lcom/wwcd/util/DialogAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wwcd/util/AndroidUtil$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wwcd/util/AndroidUtil$4;


# direct methods
.method constructor <init>(Lcom/wwcd/util/AndroidUtil$4;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/wwcd/util/AndroidUtil$4$1;->this$0:Lcom/wwcd/util/AndroidUtil$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAction()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/wwcd/util/AndroidUtil$4$1;->this$0:Lcom/wwcd/util/AndroidUtil$4;

    iget-object v0, v0, Lcom/wwcd/util/AndroidUtil$4;->val$ctx:Landroid/app/Activity;

    iget-object v1, p0, Lcom/wwcd/util/AndroidUtil$4$1;->this$0:Lcom/wwcd/util/AndroidUtil$4;

    iget-object v1, v1, Lcom/wwcd/util/AndroidUtil$4;->val$dlurl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wwcd/util/AndroidUtil;->downloadApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    return-void
.end method
