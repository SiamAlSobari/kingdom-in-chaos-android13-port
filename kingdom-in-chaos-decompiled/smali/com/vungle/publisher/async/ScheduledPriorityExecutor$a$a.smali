.class final Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a;

.field private final b:Ljava/lang/Runnable;

.field private final c:J

.field private final d:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a;Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;-><init>(Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a;Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;B)V

    .line 234
    return-void
.end method

.method private constructor <init>(Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a;Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;B)V
    .locals 2

    .prologue
    .line 236
    iput-object p1, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->a:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->b:Ljava/lang/Runnable;

    .line 238
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->c:J

    .line 239
    iput-object p3, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->d:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    .line 240
    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;)Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->d:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 223
    check-cast p1, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;

    .end local p1    # "x0":Ljava/lang/Object;
    iget-object v0, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->d:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    iget-object v1, p1, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->d:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 270
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v0, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->b:Ljava/lang/Runnable;

    iget-object v1, p1, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :try_start_1
    iget-wide v0, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->c:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->a:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a;

    iget-wide v1, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->c:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    const-string v1, "VungleAsync"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error rescheduling "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 252
    :catch_1
    move-exception v0

    .line 253
    :try_start_2
    const-string v1, "VungleAsync"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error executing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    :try_start_3
    iget-wide v0, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->c:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->a:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a;

    iget-wide v1, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->c:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 261
    :catch_2
    move-exception v0

    .line 262
    const-string v1, "VungleAsync"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error rescheduling "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    .line 257
    :try_start_4
    iget-wide v1, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->c:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->a:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a;

    iget-wide v2, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->c:J

    invoke-virtual {v1, p0, v2, v3}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 263
    :cond_1
    :goto_1
    throw v0

    .line 261
    :catch_3
    move-exception v1

    .line 262
    const-string v2, "VungleAsync"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error rescheduling "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{PriorityRunnable:: taskType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->d:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", repeatMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$a$a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
