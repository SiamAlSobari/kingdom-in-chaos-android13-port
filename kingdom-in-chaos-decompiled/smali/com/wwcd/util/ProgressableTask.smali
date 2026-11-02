.class public Lcom/wwcd/util/ProgressableTask;
.super Ljava/lang/Object;
.source "ProgressableTask.java"


# instance fields
.field private _cancelID:I

.field private final _context:Landroid/content/Context;

.field private volatile _isCancelled:Z

.field private final _message:Ljava/lang/CharSequence;

.field private _progressDialog:Landroid/app/ProgressDialog;

.field private final _task:Lcom/wwcd/util/ProgressableRunnable;

.field private _taskThread:Ljava/lang/Thread;

.field private final _titleID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wwcd/util/ProgressableRunnable;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "task"    # Lcom/wwcd/util/ProgressableRunnable;
    .param p3, "messageID"    # I

    .prologue
    const/4 v3, -0x1

    .line 27
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/wwcd/util/ProgressableTask;-><init>(Landroid/content/Context;Lcom/wwcd/util/ProgressableRunnable;III[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wwcd/util/ProgressableRunnable;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "task"    # Lcom/wwcd/util/ProgressableRunnable;
    .param p3, "titleID"    # I
    .param p4, "messageID"    # I
    .param p5, "cancelID"    # I

    .prologue
    .line 22
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/wwcd/util/ProgressableTask;-><init>(Landroid/content/Context;Lcom/wwcd/util/ProgressableRunnable;III[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/wwcd/util/ProgressableRunnable;III[Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "task"    # Lcom/wwcd/util/ProgressableRunnable;
    .param p3, "titleID"    # I
    .param p4, "messageID"    # I
    .param p5, "cancelID"    # I
    .param p6, "args"    # [Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/wwcd/util/ProgressableTask;->_cancelID:I

    .line 32
    iput-object p1, p0, Lcom/wwcd/util/ProgressableTask;->_context:Landroid/content/Context;

    .line 33
    iput p3, p0, Lcom/wwcd/util/ProgressableTask;->_titleID:I

    .line 34
    if-nez p6, :cond_0

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_message:Ljava/lang/CharSequence;

    .line 36
    iput p5, p0, Lcom/wwcd/util/ProgressableTask;->_cancelID:I

    .line 37
    iput-object p2, p0, Lcom/wwcd/util/ProgressableTask;->_task:Lcom/wwcd/util/ProgressableRunnable;

    .line 38
    return-void

    .line 34
    :cond_0
    invoke-virtual {p1, p4, p6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/wwcd/util/ProgressableTask;)Lcom/wwcd/util/ProgressableRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/wwcd/util/ProgressableTask;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_task:Lcom/wwcd/util/ProgressableRunnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wwcd/util/ProgressableTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/wwcd/util/ProgressableTask;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/wwcd/util/ProgressableTask;->dismiss()V

    return-void
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 97
    :cond_0
    return-void
.end method

.method private showProgressBar()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 63
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/wwcd/util/ProgressableTask;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    .line 64
    iget v0, p0, Lcom/wwcd/util/ProgressableTask;->_titleID:I

    if-eq v0, v2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/wwcd/util/ProgressableTask;->_titleID:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/wwcd/util/ProgressableTask;->_message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 68
    iget v0, p0, Lcom/wwcd/util/ProgressableTask;->_cancelID:I

    if-eq v0, v2, :cond_1

    .line 69
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/wwcd/util/ProgressableTask;->_context:Landroid/content/Context;

    iget v2, p0, Lcom/wwcd/util/ProgressableTask;->_cancelID:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/wwcd/util/ProgressableTask$2;

    invoke-direct {v2, p0}, Lcom/wwcd/util/ProgressableTask$2;-><init>(Lcom/wwcd/util/ProgressableTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/wwcd/util/ProgressableTask$3;

    invoke-direct {v1, p0}, Lcom/wwcd/util/ProgressableTask$3;-><init>(Lcom/wwcd/util/ProgressableTask;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 84
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wwcd/util/ProgressableTask;->_isCancelled:Z

    .line 88
    invoke-direct {p0}, Lcom/wwcd/util/ProgressableTask;->dismiss()V

    .line 89
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_taskThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 90
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_task:Lcom/wwcd/util/ProgressableRunnable;

    invoke-interface {v0}, Lcom/wwcd/util/ProgressableRunnable;->onCancel()V

    .line 91
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/wwcd/util/ProgressableTask;->_isCancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_taskThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_taskThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wwcd/util/ProgressableTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/wwcd/util/ProgressableTask;->showProgressBar()V

    .line 42
    new-instance v0, Lcom/wwcd/util/ProgressableTask$1;

    const-string v1, "ProgressableTask"

    invoke-direct {v0, p0, v1}, Lcom/wwcd/util/ProgressableTask$1;-><init>(Lcom/wwcd/util/ProgressableTask;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_taskThread:Ljava/lang/Thread;

    .line 51
    iget-object v0, p0, Lcom/wwcd/util/ProgressableTask;->_taskThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    return-void
.end method
