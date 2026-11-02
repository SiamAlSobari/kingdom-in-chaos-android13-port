.class public final Lcom/vungle/publisher/cp;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/vungle/publisher/cp;->a:Ljava/lang/Class;

    .line 14
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/vungle/publisher/cp;->a(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/cp;->b:[Ljava/lang/Object;

    .line 15
    return-void
.end method

.method private a(I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TE;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/cp;->a:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private b()[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TE;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v1, p0, Lcom/vungle/publisher/cp;->b:[Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/cp;->b:[Ljava/lang/Object;

    array-length v0, v0

    .line 41
    invoke-direct {p0}, Lcom/vungle/publisher/cp;->c()I

    move-result v2

    .line 42
    invoke-direct {p0, v2}, Lcom/vungle/publisher/cp;->a(I)[Ljava/lang/Object;

    move-result-object v3

    .line 43
    iget v4, p0, Lcom/vungle/publisher/cp;->c:I

    add-int/2addr v4, v2

    if-le v4, v0, :cond_0

    .line 44
    iget v4, p0, Lcom/vungle/publisher/cp;->c:I

    sub-int/2addr v0, v4

    .line 45
    iget-object v4, p0, Lcom/vungle/publisher/cp;->b:[Ljava/lang/Object;

    iget v5, p0, Lcom/vungle/publisher/cp;->c:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget-object v4, p0, Lcom/vungle/publisher/cp;->b:[Ljava/lang/Object;

    const/4 v5, 0x0

    sub-int/2addr v2, v0

    invoke-static {v4, v5, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    :goto_0
    monitor-exit v1

    return-object v3

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/cp;->b:[Ljava/lang/Object;

    iget v4, p0, Lcom/vungle/publisher/cp;->c:I

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c()I
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/vungle/publisher/cp;->b:[Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    iget v0, p0, Lcom/vungle/publisher/cp;->d:I

    monitor-exit v1

    return v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TE;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/vungle/publisher/cp;->b:[Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/cp;->b()[Ljava/lang/Object;

    move-result-object v0

    .line 58
    iget-object v2, p0, Lcom/vungle/publisher/cp;->b:[Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    iput v3, p0, Lcom/vungle/publisher/cp;->d:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 60
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
