void leaf() {
  __asm__("rcrb $0x1, %ah");
  }

void main() {
  leaf();
}