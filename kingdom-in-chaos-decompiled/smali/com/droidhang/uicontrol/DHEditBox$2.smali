.class final Lcom/droidhang/uicontrol/DHEditBox$2;
.super Ljava/lang/Object;
.source "DHEditBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/droidhang/uicontrol/DHEditBox;->showEditBox2(Landroid/opengl/GLSurfaceView;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/app/Activity;

.field final synthetic val$glSurfaceView:Landroid/opengl/GLSurfaceView;

.field final synthetic val$limit:I

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/droidhang/uicontrol/DHEditBox$2;->val$ctx:Landroid/app/Activity;

    iput-object p2, p0, Lcom/droidhang/uicontrol/DHEditBox$2;->val$title:Ljava/lang/String;

    iput p3, p0, Lcom/droidhang/uicontrol/DHEditBox$2;->val$limit:I

    iput-object p4, p0, Lcom/droidhang/uicontrol/DHEditBox$2;->val$msg:Ljava/lang/String;

    iput-object p5, p0, Lcom/droidhang/uicontrol/DHEditBox$2;->val$glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/droidhang/uicontrol/DHEditBox$2;->val$ctx:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/droidhang/uicontrol/DHEditBox$2;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/droidhang/uicontrol/DHEditBox$2;->val$ctx:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 58
    .local v2, "input":Landroid/widget/EditText;
    const/4 v3, 0x1

    new-array v1, v3, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    iget v5, p0, Lcom/droidhang/uicontrol/DHEditBox$2;->val$limit:I

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v3

    .line 59
    .local v1, "filters":[Landroid/text/InputFilter;
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 61
    iget-object v3, p0, Lcom/droidhang/uicontrol/DHEditBox$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 63
    const-string v3, "Ok"

    new-instance v4, Lcom/droidhang/uicontrol/DHEditBox$2$1;

    invoke-direct {v4, p0, v2}, Lcom/droidhang/uicontrol/DHEditBox$2$1;-><init>(Lcom/droidhang/uicontrol/DHEditBox$2;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 81
    return-void
.end method
