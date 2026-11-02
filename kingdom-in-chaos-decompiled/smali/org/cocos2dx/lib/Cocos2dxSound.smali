.class public Lorg/cocos2dx/lib/Cocos2dxSound;
.super Ljava/lang/Object;
.source "Cocos2dxSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;,
        Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;
    }
.end annotation


# static fields
.field private static final INVALID_SOUND_ID:I = -0x1

.field private static final INVALID_STREAM_ID:I = -0x1

.field public static final MAX_SIMULTANEOUS_STREAMS_DEFAULT:I = 0x5

.field public static final MAX_SIMULTANEOUS_STREAMS_I9100:I = 0x3

.field private static final SOUND_PRIORITY:I = 0x1

.field private static final SOUND_QUALITY:I = 0x5

.field private static final SOUND_RATE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "Cocos2dxSound"


# instance fields
.field private _obj:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftVolume:F

.field private final mPathSoundIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPathStreamIDsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRightVolume:F

.field private mSemaphore:Ljava/util/concurrent/Semaphore;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamIdSyn:I

.field private simultaneousStreams:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "simultaneousStreams"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->_obj:Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mContext:Landroid/content/Context;

    .line 84
    invoke-direct {p0, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->initData(I)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxSound;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxSound;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->_obj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lorg/cocos2dx/lib/Cocos2dxSound;I)I
    .locals 0
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxSound;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mStreamIdSyn:I

    return p1
.end method

.method static synthetic access$300(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;IZ)I
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxSound;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxSound;->doPlayEffect(Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/cocos2dx/lib/Cocos2dxSound;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lorg/cocos2dx/lib/Cocos2dxSound;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private doPlayEffect(Ljava/lang/String;IZ)I
    .locals 9
    .param p1, "pPath"    # Ljava/lang/String;
    .param p2, "soundId"    # I
    .param p3, "pLoop"    # Z

    .prologue
    .line 302
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    iget v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    const/4 v4, 0x1

    if-eqz p3, :cond_1

    const/4 v5, -0x1

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 305
    .local v7, "streamID":I
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 306
    .local v8, "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v8, :cond_0

    .line 307
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .restart local v8    # "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    return v7

    .line 302
    .end local v7    # "streamID":I
    .end local v8    # "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private initData(I)V
    .locals 4
    .param p1, "simultaneousStreams"    # I

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 88
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-direct {v0, p1, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    .line 89
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;

    invoke-direct {v1, p0}, Lorg/cocos2dx/lib/Cocos2dxSound$OnLoadCompletedListener;-><init>(Lorg/cocos2dx/lib/Cocos2dxSound;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 91
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    .line 92
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->simultaneousStreams:I

    .line 93
    iput v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    .line 95
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 96
    return-void
.end method


# virtual methods
.method public createSoundIDFromAsset(Ljava/lang/String;)I
    .locals 5
    .param p1, "pPath"    # Ljava/lang/String;

    .prologue
    .line 279
    const/4 v1, -0x1

    .line 282
    .local v1, "soundID":I
    :try_start_0
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    .line 293
    :goto_0
    if-nez v1, :cond_0

    .line 294
    const/4 v1, -0x1

    .line 297
    :cond_0
    return v1

    .line 285
    :cond_1
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    .line 289
    const-string v2, "Cocos2dxSound"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public end()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 267
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 268
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 269
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 270
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    .line 273
    iput v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    .line 275
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->simultaneousStreams:I

    invoke-direct {p0, v0}, Lorg/cocos2dx/lib/Cocos2dxSound;->initData(I)V

    .line 276
    return-void
.end method

.method public getEffectsVolume()F
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public pauseAllEffects()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 200
    return-void
.end method

.method public pauseEffect(I)V
    .locals 1
    .param p1, "pStreamID"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->pause(I)V

    .line 192
    return-void
.end method

.method public playEffect(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "pPath"    # Ljava/lang/String;
    .param p2, "pLoop"    # Z

    .prologue
    const/4 v3, -0x1

    .line 144
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 145
    .local v1, "soundID":Ljava/lang/Integer;
    const/4 v2, -0x1

    .line 147
    .local v2, "streamID":I
    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, p1, v3, p2}, Lorg/cocos2dx/lib/Cocos2dxSound;->doPlayEffect(Ljava/lang/String;IZ)I

    move-result v2

    :goto_0
    move v3, v2

    .line 174
    :cond_0
    :goto_1
    return v3

    .line 152
    :cond_1
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->preloadEffect(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 159
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    monitor-enter v4

    .line 161
    :try_start_0
    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mEffecToPlayWhenLoadedArray:Ljava/util/ArrayList;

    new-instance v6, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, p0, p1, v7, p2}, Lorg/cocos2dx/lib/Cocos2dxSound$SoundInfoForLoadedCompleted;-><init>(Lorg/cocos2dx/lib/Cocos2dxSound;Ljava/lang/String;IZ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :try_start_1
    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 167
    iget v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mStreamIdSyn:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public preloadEffect(Ljava/lang/String;)I
    .locals 3
    .param p1, "pPath"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 113
    .local v0, "soundID":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxSound;->createSoundIDFromAsset(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 117
    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public resumeAllEffects()V
    .locals 6

    .prologue
    .line 205
    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->_obj:Ljava/lang/Object;

    monitor-enter v5

    .line 206
    :try_start_0
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 207
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 208
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 211
    .local v3, "pStreamID":I
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v4, v3}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_0

    .line 215
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    .end local v3    # "pStreamID":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    return-void
.end method

.method public resumeEffect(I)V
    .locals 1
    .param p1, "pStreamID"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->resume(I)V

    .line 196
    return-void
.end method

.method public setEffectsVolume(F)V
    .locals 8
    .param p1, "pVolume"    # F

    .prologue
    .line 243
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 244
    const/4 p1, 0x0

    .line 246
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    .line 247
    const/high16 p1, 0x3f800000    # 1.0f

    .line 250
    :cond_1
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    .line 253
    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->_obj:Ljava/lang/Object;

    monitor-enter v5

    .line 254
    :try_start_0
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 255
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 256
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 257
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 259
    .local v3, "pStreamID":I
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    iget v6, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mLeftVolume:F

    iget v7, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mRightVolume:F

    invoke-virtual {v4, v3, v6, v7}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto :goto_0

    .line 263
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;>;"
    .end local v3    # "pStreamID":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    return-void
.end method

.method public stopAllEffects()V
    .locals 6

    .prologue
    .line 221
    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->_obj:Ljava/lang/Object;

    monitor-enter v5

    .line 222
    :try_start_0
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 223
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 224
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 226
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 227
    .local v3, "pStreamID":I
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v4, v3}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0

    .line 234
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "pStreamID":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 233
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 234
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    return-void
.end method

.method public stopEffect(I)V
    .locals 6
    .param p1, "pStreamID"    # I

    .prologue
    .line 178
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 179
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->_obj:Ljava/lang/Object;

    monitor-enter v4

    .line 181
    :try_start_0
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    .local v1, "pPath":Ljava/lang/String;
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 187
    .end local v1    # "pPath":Ljava/lang/String;
    :cond_1
    monitor-exit v4

    .line 188
    return-void

    .line 187
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unloadEffect(Ljava/lang/String;)V
    .locals 7
    .param p1, "pPath"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v5, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->_obj:Ljava/lang/Object;

    monitor-enter v5

    .line 127
    :try_start_0
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 128
    .local v3, "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 130
    .local v1, "pStreamID":Ljava/lang/Integer;
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0

    .line 134
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pStreamID":Ljava/lang/Integer;
    .end local v3    # "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 133
    .restart local v3    # "streamIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathStreamIDsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 137
    .local v2, "soundID":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 138
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 139
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxSound;->mPathSoundIDMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1
    return-void
.end method
