void leaf() {
  __asm__("rcrb $0x77, %ah");
  }

void main() {
  leaf();
}