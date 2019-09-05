void leaf() {
  __asm__("bswap %rbx");
  }

void main() {
  leaf();
}