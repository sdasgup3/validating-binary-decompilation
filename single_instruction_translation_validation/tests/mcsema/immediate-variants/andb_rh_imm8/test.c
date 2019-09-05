void leaf() {
  __asm__("andb $0x77, %ah");
  }

void main() {
  leaf();
}