# dev
Development stuff


## File Compression and Archiving

Compression:

```
tar -cvf archive.tar [files/directories]

# -c: Create a new archive
# -v: Verbosely list the files processed
# -f: Use archive file specified
```

```
tar -cvzf archive.tar.gz [files/directories]

# -z: Gzip
```

Extraction:

```
tar -xvf archive.tar [files/directories]

# -x: Extract archive
```


## Vim


## Docker / Colima

Start Colima:

```
colima start --cpu 4 --memory 16 --disk 100
```

Remove all images:

```
docker rmi $(docker images -a -q)
```

Remove all containers:

```
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
```

Remove all volumes:
```
docker volume rm $(docker volume ls -q)
```


## Elasticsearch

Relocate shards:

```
GET _cat/allocation?v&s=node&h=node,disk.percent

GET _cat/shards/?v&s=node,store&bytes=gb

GET _cat/shards/insert_index_name_here?v&s=shard,prirep&bytes=mb&h=index,shard,prirep,node

POST /_cluster/reroute?dry_run=false
{
    "commands" : [
        {
            "move" : {
                "index" : "insert_index_name_here",
                "shard" : insert_shard_number_here,
                "from_node" : "insert_from_node_here", 
                "to_node" : "insert_to_node_here"
            }
        }
    ]
}
```

