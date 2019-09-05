void leaf() {
  __asm__("rcrb $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}