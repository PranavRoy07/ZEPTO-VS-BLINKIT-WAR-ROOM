from sqlalchemy import create_engine
engine = create_engine('sqlite:///war_room.db')
print("Database connector synced via SQLAlchemy.")
