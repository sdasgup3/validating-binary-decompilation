void leaf() {
  __asm__("shlb $0x77, %bl");
  }

void main() {
  leaf();
}