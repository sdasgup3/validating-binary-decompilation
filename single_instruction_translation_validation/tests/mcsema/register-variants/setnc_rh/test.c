void leaf() {
  __asm__("setnc %ah");
  }

void main() {
  leaf();
}