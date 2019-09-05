void leaf() {
  __asm__("idivb %bh");
  }

void main() {
  leaf();
}